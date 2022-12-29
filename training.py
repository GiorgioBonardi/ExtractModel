import os
from unified_planning.engines import ValidationResultStatus, results
from unified_planning.shortcuts import OneshotPlanner, PlanValidator
from unified_planning.io import PDDLReader
from up_lpg.lpg_planner import LPGEngine
from multiprocessing import Process, Pipe
from models import joinFile

# Custom Process class that supports solving of a `problem` with the given `planner` and sends the result through a Pipe estabilished connection
class SolverProcess(Process):
    def __init__(self, conn, planner, problem,  **kwargs):
        Process.__init__(self, **kwargs)
        self._conn = conn
        self._planner = planner
        self._problem = problem

    # override the run function
    def run(self):
        try:
            result = self._planner.solve(self._problem)
            self._conn.send(result)
        except BaseException as e:
            # If the `solve` function of the planner raises an Exception, it is sent through the pipe to be handled elsewhere
            self._conn.send(e)

def getSubdirectories(parentDirectory):
    return [name for name in os.listdir(parentDirectory)
            if os.path.isdir(os.path.join(parentDirectory, name))]

def extract_features(original_domain, original_problem, rootpathOutput):
    print("\n***start extract features***\n")
    #features
    command = "python2.7 " + rootpath + "/features/translate/translate.py " + original_domain + " " + original_problem
    print(command)
    os.system(command)

    command =  rootpath + "/features/preprocess/preprocess < " + rootpathOutput + "/output.sas"
    os.system(command)
    
    command = rootpath + "/features/ff-learner/roller3.0 -o " + original_domain + " -f " + original_problem + " -S 28"
    os.system(command)

    command = rootpath + "/features/heuristics/training.sh "  + original_domain + " " + original_problem
    os.system(command)

    command = rootpath +"/search/downward --landmarks \"lm=lm_merged([lm_hm(m=1),lm_rhw(),lm_zg()])\" < " + rootpathOutput + "/output"
    os.system(command)

    command = rootpath + "/search-mercury/downward ipc seq-agl-mercury <" + rootpathOutput + "/output"
    os.system(command)

    print("\n***end extract features***\n")

def validate_plan(problem, plan):
    with PlanValidator(problem_kind=problem.kind) as validator:
            return validator.validate(problem, plan)

def solve_plan(planner, problem, connMain, connSolver, timeAllocated):
    try:
        # Creating and starting solving sub-process
        proc = SolverProcess(connSolver, planner, problem)
        proc.start()

        # Wait for the sub-process to put its result into the Pipe, Time limit = `timeAllocated`
        if connMain.poll(timeAllocated):
            # If the result is ready before Timeout, retrieve it from the pipe
            result = connMain.recv()
            # Check if the result is an exception, if True then raise it
            if isinstance(result, BaseException):
                raise result
            proc.terminate()
            proc.join()
        else:
            # The sub-process couldn't finish excecution in time
            raise TimeoutError

        return result

    # Catch any exceptions
    except BaseException as e:
        proc.terminate()
        proc.join()
        raise e

def execute_problem(domain, problem, trainingPlanners):
    """
    Returns a list in which each element contains `planner.name` and a `boolean` 
    which tells if that planner can solve the problem or not.

    :param domain: Domain relative to the problem
    :param problem: Problem to be solved
    :param trainingPlanners: List containing the planners to be used
    :return res: The list created
    """
    timeAllocated = 35
    print("PROBLEM: " + problem)
    print("DOMAIN" + domain)
    reader = PDDLReader()
    try:
        parsed_problem = reader.parse_problem(domain, problem)

        # Initialize Pipe connection between Main process and Solver process
        connMain, connSolver = Pipe()
        res = []

        # Initialise result
        result = None

        for p in trainingPlanners:
            if(p != 'lpg'):
                # Solve the given `problem` with tamer/enhsp/fast-downward planner
                planner = OneshotPlanner(name=p)
            else:
                # Solve the given `problem` with lpg planner
                planner = LPGEngine()

            with planner:
                try:
                    result = solve_plan(planner, parsed_problem, connMain, connSolver, timeAllocated)
                    plan = result.plan
                    print(plan)
                except TimeoutError:
                    # Planner couldn't solve the problem with the `timeAllocated`
                    print(f"{p} TIMED OUT")
                    toBeAppended = p + "|, False"
                    res.append(toBeAppended)
                    continue
                except:
                    # Planner couldn't solve the problem (Throws exception while solving)
                    print(f"{p} has encountered an exception while attempting to solve")
                    continue

            if plan is None:
                # Planner tried solving, successfully concluded that it cannot find a plan
                print(f"{p} couldn't solve the problem")
                toBeAppended = p + "|, False"
                res.append(toBeAppended)
            else:
                # Plan is not None
                # Validation of the plan found
                try:
                    # val = planner.validate(parsed_problem, result.plan) #vecchia riga
                    val = validate_plan(parsed_problem, plan)
                    print(val.status)
                    if(val.status == ValidationResultStatus.VALID):
                        # To be appended a positive result if validation concludes positively
                        toBeAppended = p + "|, " + str(result.status in results.POSITIVE_OUTCOMES)
                        print(toBeAppended)
                    else:
                        # To be appended a negative result if validation concludes negatively
                        toBeAppended = p + "|, False"
                    # Append the outcome relative to the planner
                    res.append(toBeAppended)        
                except:
                    print(f"{p} has encountered an exception while attempting to validate the plan")   
                    continue
    except Exception: 
        print("Error with the parsing of the problem")
        return []
    return res

rootpath = os.path.dirname(__file__)
pathIPCs = os.path.join(rootpath, "domain")
trainingPlanners = ['lpg', 'enhsp']

# Fetch list of IPC competition directories
ipcList = getSubdirectories(pathIPCs)

# Enter specific IPC competition folder
for specificIPC in ipcList:  
    pathCurrentIPC = os.path.join(pathIPCs, specificIPC)
    domainList = getSubdirectories(pathCurrentIPC)
    # Enter specific Domain from IPC competition
    for specificDomain in domainList:
        pathCurrentDomain = os.path.join(pathCurrentIPC, specificDomain)
        # Get domain/problem `i`
        for i in range(1,2):
        #i = 1
        #for file in os.listdir(pathSpecificDomain):
            original_domain = os.path.join(pathCurrentDomain, "p"+str(i).zfill(2)+"-domain.pddl")
            
            # Only proceed if Domain exists
            if(not os.path.isfile(original_domain)):
                original_domain = os.path.join(pathCurrentDomain, "domain.pddl")
    
            original_problem = os.path.join(pathCurrentDomain, "p"+str(i).zfill(2)+".pddl")
            pathCurrentResult = os.path.join(pathCurrentDomain, "result"+str(i).zfill(2))

            # Only proceed if Problem `i` exists
            if(os.path.isfile(original_problem)):
                if(not os.path.isdir(pathCurrentResult)):
                    os.mkdir(pathCurrentResult)
                os.chdir(pathCurrentResult)
                extract_features(original_domain, original_problem, pathCurrentResult)

                # Solve Problem `i` with all planners and obtain a list containing the results (solved or not solved) 
                res_planner = execute_problem(original_domain, original_problem, trainingPlanners)
                if(res_planner is not []):
                    #join file
                    pathModels = os.path.join(rootpath, "models")
                    res_planner_str = str(res_planner)[1:-1:1].replace("',", "'")
                    print(res_planner_str)
                    # command = "python2.7 "+ pathModels + "/joinFile.py " + pathCurrentResult + " " + res_planner_str
                    # print(command)
                    # os.system(command)
                    joinFile.create_globals(pathCurrentResult, res_planner, [])

#                 #i+=1

# # Create `joined_global_features` containing all the features' (from all the problems to be used in the training session)
# #potremmo richiamarlo con python3 no?
# command = "python2.7 "+ rootpath + "/join_globals.py"
# print(command)
# os.system(command)

# # Remove unused attributes
# ##TODO: la dobbiamo fare o no?
# command = "java -cp "+ rootpath +"/models/weka.jar -Xms256m -Xmx1024m weka.filters.unsupervised.attribute.Remove -R 1-3,18,20,65,78-79,119-120 -i "+ rootpath + "/joined_global_features.arff -o "+ rootpath +"/joined_global_features_simply.arff"
# os.system(command)

# #TODO: da lasciare -Xmx1024M?
# #the flag Xmx specifies the maximum memory allocation pool for a Java Virtual Machine (JVM)
# # For example, starting a JVM like below will start it with 256 MB of memory and will allow the process to use up to 2048 MB of memory:
# # java -Xms256m -Xmx2048m

# # Check the result      
# command = "java -Xms256m -Xmx1024m -cp " + rootpath + "/models/weka.jar weka.classifiers.meta.RotationForest -t " + rootpath +"/joined_global_features_simply.arff > " + rootpath + "/output"
# print(command)
# os.system(command)

# # Save the model created
# command = "java -Xms256m -Xmx1024m -cp " + rootpath + "/models/weka.jar weka.classifiers.meta.RotationForest  -t " + rootpath + "/joined_global_features_simply.arff -d " + rootpath + "/RotationForest.model"
# print(command)
# os.system(command)

# # # #comando che prende in ingresso il model (gia' allenato) e il train set utilizzati per avere una predizione in output nel file outputModel
# # # command = "java -Xms256m -Xmx1024m -cp "+ pathname +"/models/weka.jar weka.classifiers.meta.RotationForest -l "+pathname+"/RotationForest.model -T "+pathname+"/global_features_simply.arff -p 113 > "+pathname+"/outputModel"
# # # os.system(command)

# # # command = "python2.7 "+ pathname +"/models/parseWekaOutputFile.py "+pathname+"/outputModel "+pathname+"/listPlanner"
# # # os.system(command)


# # ##far provare a risolvere il problema per gli N planner

# # # planners = ["tamer", "enhsp", "pyperplan", "lgp"]

# # # for i in xrange(0, len(planners)):
# # #     planner = rootpath + "/" + planners[i] + "/plan"
# # #     run (planner, original_domain, original_problem, result, timeout)