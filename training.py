##estrazione features per domain/problem
##far provare a risolvere il problema per gli N planner
##unire features + nomePlanner + true/false 
    ##si potrebbe modificare joinFile.py passandogli la lista dei planner e lista di true/false

import os               # path and process management
import sys              # argv, exit
import argparse
from unified_planning.engines import ValidationResultStatus, results
from unified_planning.shortcuts import OneshotPlanner
from unified_planning.io import PDDLReader
from up_lpg.lpg_planner import LPGEngine
from multiprocessing import Process, Queue
from queue import Empty

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

#fa eseguire il problem a tutti i planner supportarti e crea la lista con true/false 
def execute_problem(domain, problem):
    """
    Returns a list in which each element contains `planner.name` and a `boolean` 
    which tells if that planner can solve the problem or not.

    :param problem: Problem to be solved
    :return res: The list created
    """
    timeAllocated = 10
    print("PROBLEM: " + problem)
    print("DOMAIN" + domain)
    reader = PDDLReader()
    try:
        parsed_problem = reader.parse_problem(domain, problem)
        plannerList = ['lpg','tamer','fast-downward', 'enhsp']
        q = Queue()
        res = []

        # Initialise result
        result = None
        
        for p in plannerList:
            
            if(p != 'lpg'):
                # Solve the given `problem` with tamer/enhsp/fast-downward planner
                with OneshotPlanner(name=p) as planner:
                    try:
                        # Creating and starting solving sub-process
                        proc = Process(target = lambda: q.put(planner.solve(parsed_problem)))
                        proc.start()

                        try:
                            # Wait for the sub-process to put its result in the queue, Time limit = `timeAllocated`
                            result = q.get(block = True, timeout = timeAllocated)
                            proc.terminate()
                            proc.join()
                        except Empty:
                            # Queue resulted empty after waiting for `timeAllocated` seconds

                            print(f"{p} TIMED OUT")
                            toBeAppended = ","+ p + ", False"
                            res.append(toBeAppended)
                            proc.terminate()
                            proc.join()
                            continue
                    except:
                        # Planner couldn't solve the problem (Throws exception while solving)
                        print(f"{p} has encountered an exception while solving")
                        pass
            else:
                # Solve problem with LPG planner
                try:
                    # Creating and starting solving sub-process
                    planner = LPGEngine()
                    proc = Process(target = lambda: q.put(planner._solve(parsed_problem)))
                    proc.start()
                    print("LPG solving...")
                    try:
                        # Wait for the sub-process to put its result in the queue, Time limit = `timeAllocated`
                        result = q.get(block = True, timeout = timeAllocated)
                        print(result.plan)
                        #TODO: LPG has no validate?
                        toBeAppended = ",lpg, " + str(result.status in results.POSITIVE_OUTCOMES)
                        res.append(toBeAppended)
                        proc.terminate()
                        proc.join()
                        print(toBeAppended)
                    except Empty:
                        # Queue resulted empty after waiting for `timeAllocated` seconds
                        print(f"{p} TIMED OUT")
                        toBeAppended = ","+ p + ", False"
                        res.append(toBeAppended)
                        proc.terminate()
                        proc.join()
                        continue
                except:
                    # Planner couldn't solve the problem (Throws exception while solving)
                    #TODO: SHOULDN'T APPEND FALSE, IT THREW ERROR !!!!!!!
                    print(f"{p} has encountered an exception while attempting to solve")
                    toBeAppended = "," + p +", False"
                    res.append(toBeAppended)
                    pass

            if result.plan is None:
                # Planner tried solving, successfully concluded that it cannot find a plan
                print(f"{p} couldn't solve the problem")
                toBeAppended = ","+ p + ", False"
                res.append(toBeAppended)
            else:
                # Plan is not None
                print(result.plan)
                #da togliere validate(?) fast-downward non lo ha
                #magari fare un "if ha validate then fai validate" se ha fatto un warning

                # Validation of the plan found
                try:
                    # Check if the given planner implements `validate`
                    if hasattr(planner, 'validate'):
                        # Planner validates the plan
                        val = planner.validate(parsed_problem, result.plan)
                        print(val.status)
                        if(val.status == ValidationResultStatus.VALID):
                            #TODO: da togliere la , all'inizio?
                            # To be appended a positive result if validation concludes positively
                            toBeAppended = ","+ p + ", " + str(result.status in results.POSITIVE_OUTCOMES)
                            print(toBeAppended)
                        else:
                            # To be appended a negative result if validation concludes negatively
                            toBeAppended = ","+ p + ", False"
                    else:
                        # Planner can't validate the plan because it doesn't implement this functionality
                        print(f"{p} doesn't support a validation process")
                        #TODO:If planner doesn't implement validation, should it still be treated as POSITIVE OUTOCME?
                        toBeAppended = ","+ p + ", " + str(result.status in results.POSITIVE_OUTCOMES)
                        print(toBeAppended) 
                    # Append the outcome relative to the planner
                    res.append(toBeAppended)        
                except:
                    #per debug modificare excpet con except Exception as inst:
                    # print(type(inst))    # the exception instance
                    # print(inst.args)     # arguments stored in .args
                    # print(inst)
                    # Exceptions while trying to validate/check for validation implementation
                    print(f"{p} has encountered an exception while attempting to validate the plan" )   
    
    except: 
        print("Error with the parsing of the problem")
        # print(type(inst))    # the exception instance
        # print(inst.args)     # arguments stored in .args
        # print(inst)
        return []
    
    # res = ['enhsp, True','tamer, False','fast-downward, True','lpg, False']
    return res

rootpath = os.path.dirname(__file__)
pathIPCs = os.path.join(rootpath, "domain")

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
                # extract_features(original_domain, original_problem, pathCurrentResult)

                ##far eseguire il problem ai 4 pianificatori e raccogliere un array di bool es: [true, false, true, true] per poi passarlo a joinFile
                # Solve Problem `i` with all planners and obtain a list containing the results (solved or not solved) 
                res_planner = execute_problem(original_domain, original_problem)
                #res_planner = ['enhsp, True','tamer, False','fast-downward, True','lpg, False']
                
                #join file
                pathModels = os.path.join(rootpath, "models")
                res_planner_str = str(res_planner)[1:-1:1].replace("',", "'")
                print(res_planner_str)
                command = "python2.7 "+ pathModels + "/joinFile.py " + pathCurrentResult + " " + res_planner_str
                print(command)
                os.system(command)

                #i+=1

# Create `joined_global_features` containing all the features' (from all the problems to be used in the training session)
command = "python2.7 "+ rootpath + "/join_globals.py " + rootpath
print(command)
os.system(command)

# Remove unused attributes
##TODO: la dobbiamo fare o no?
command = "java -cp "+ rootpath +"/models/weka.jar -Xms256m -Xmx1024m weka.filters.unsupervised.attribute.Remove -R 1-3,18,20,65,78-79,119-120 -i "+ rootpath + "/joined_global_features.arff -o "+ rootpath +"/joined_global_features_simply.arff"
os.system(command)

# Check the result      
command = "java -Xmx1024M -cp " + rootpath + "/models/weka.jar weka.classifiers.meta.RotationForest -t " + rootpath +"/joined_global_features_simply.arff > " + rootpath + "/output"
print(command)
os.system(command)

# Save the model created
command = "java -Xmx1024M -cp " + rootpath + "/models/weka.jar weka.classifiers.meta.RotationForest  -t " + rootpath + "/joined_global_features_simply.arff -d " + rootpath + "/RotationForest.model"
print(command)
os.system(command)

# # #comando che prende in ingresso il model (gia' allenato) e il train set utilizzati per avere una predizione in output nel file outputModel
# # command = "java -Xms256m -Xmx1024m -cp "+ pathname +"/models/weka.jar weka.classifiers.meta.RotationForest -l "+pathname+"/RotationForest.model -T "+pathname+"/global_features_simply.arff -p 113 > "+pathname+"/outputModel"
# # os.system(command)

# # command = "python2.7 "+ pathname +"/models/parseWekaOutputFile.py "+pathname+"/outputModel "+pathname+"/listPlanner"
# # os.system(command)


# ##far provare a risolvere il problema per gli N planner

# # planners = ["tamer", "enhsp", "pyperplan", "lgp"]

# # for i in xrange(0, len(planners)):
# #     planner = rootpath + "/" + planners[i] + "/plan"
# #     run (planner, original_domain, original_problem, result, timeout)