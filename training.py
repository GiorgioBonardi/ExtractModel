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
        plannerList = ['lpg', 'tamer', 'fast-downward', 'enhsp']
        q = Queue()
        res = []
        for p in plannerList:
            
            if(p != 'lpg'):
            #solve problem for tamer/enhsp/fast-downward
                with OneshotPlanner(name=p) as planner:
                    try:
                        #validare la soluzione
                        #timer 5m tramite script
                        #tamer
                        result = None

                        proc = Process(target = lambda: q.put(planner.solve(parsed_problem)))
                        proc.start()
                        #result = planner.solve(parsed_problem)
                        try:
                            result = q.get(block = True, timeout = timeAllocated)
                            proc.terminate()
                            proc.join()
                        except Empty:
                            print(f"{p} TIMED OUT")
                            toBeAppended = ","+ p + ", False"
                            res.append(toBeAppended)
                            proc.terminate()
                            proc.join()
                            continue
                    except:
                        # planner couldn't solve (exception while solving)
                        print(f"{p} has encountered an exception while solving")
                        pass
            else:
            #solve problem for lpg
                try:
                    lpg_engine = LPGEngine()
                    proc = Process(target = lambda: q.put(lpg_engine._solve(parsed_problem)))
                    proc.start()
                    print("LPG solving...")
                    try:
                        result = q.get(block = True, timeout = timeAllocated)
                        print(result.plan)
                        toBeAppended = ",lpg, " + str(result.status in results.POSITIVE_OUTCOMES)
                        res.append(toBeAppended)
                        proc.terminate()
                        proc.join()
                        print(toBeAppended)
                    except Empty:
                        print(f"LPG TIMED OUT")
                        toBeAppended = ","+ p + ", False"
                        res.append(toBeAppended)
                        proc.terminate()
                        proc.join()
                        continue
                except:
                    toBeAppended = "," + p +", False"
                    res.append(toBeAppended)
                    pass

            if result.plan is None:
                print(f"{p} couldn't solve the problem")
                toBeAppended = ","+ p + ", False"
                res.append(toBeAppended)
            else:
                #result = planner.solve(parsed_problem)
                print(result.plan)
                #da togliere validate(?) fast-downward non lo ha
                #magari fare un "if ha validate then fai validate" se ha fatto un warning
                try:
                    if hasattr(planner, 'validate'):
                        val = planner.validate(parsed_problem, result.plan)
                        print(val.status)
                        if(val.status == ValidationResultStatus.VALID):
                            #TODO: da togliere la , all'inizio?
                            toBeAppended = ","+ p + ", " + str(result.status in results.POSITIVE_OUTCOMES)
                            print(toBeAppended)
                        else:
                            toBeAppended = ","+ p + ", False"
                    else:
                        print(f"{p} isn't able to validate the plan")
                        #da chiedere
                        toBeAppended = ","+ p + ", " + str(result.status in results.POSITIVE_OUTCOMES)
                        print(toBeAppended) 
                    res.append(toBeAppended)        
                except:
                    print(f"{p} couldn't validate the plan" )   
    except Exception as inst: 
        print("Error with the parsing of the problem")
        print(type(inst))    # the exception instance
        print(inst.args)     # arguments stored in .args
        print(inst)
        return []
    
    # res = ['enhsp, True','tamer, False','fast-downward, True','lpg, False']
    return res

rootpath = os.path.dirname(__file__)
pathAllDomain = os.path.join(rootpath, "domain")
##estrazione features per domain/problem
for dir in os.listdir(pathAllDomain):  
    pathDomain = os.path.join(pathAllDomain, dir)
    for domain_dir in os.listdir(pathDomain):
        pathSpecificDomain = os.path.join(pathDomain, domain_dir)
        for i in range(1,2):
        #i = 1
        #for file in os.listdir(pathSpecificDomain):
            original_domain = os.path.join(pathSpecificDomain, "p"+str(i).zfill(2)+"-domain.pddl")
            if(not os.path.isfile(original_domain)):
                original_domain = os.path.join(pathSpecificDomain, "domain.pddl")
            original_problem = os.path.join(pathSpecificDomain, "p"+str(i).zfill(2)+".pddl")
            currentpath = os.path.join(pathSpecificDomain, "result"+str(i).zfill(2))

            if(os.path.isfile(original_problem)):
                if(not os.path.isdir(currentpath)):
                    os.mkdir(currentpath)
                os.chdir(currentpath)
                # extract_features(original_domain, original_problem, currentpath)

                ##far eseguire il problem ai 4 pianificatori e raccogliere un array di bool es: [true, false, true, true] per poi passarlo a joinFile
                # res_planner = execute_problem(original_domain, original_problem)
                res_planner = ['enhsp, True','tamer, False','fast-downward, True','lpg, False']
                #join file
                actual_rootpath = os.path.join(rootpath, "models")
                res_planner_str = str(res_planner)[1:-1:1].replace("',", "'")
                print(res_planner_str)
                command = "python2.7 "+ actual_rootpath + "/joinFile.py " + currentpath + " " + res_planner_str
                print(command)
                os.system(command)

                #i+=1


#creazione file "joined_global_features" unico
command = "python2.7 "+ rootpath + "/join_globals.py " + rootpath
print(command)
os.system(command)

#rimozione attributi 
##TODO: la dobbiamo fare o no?
command = "java -cp "+ rootpath +"/models/weka.jar -Xms256m -Xmx1024m weka.filters.unsupervised.attribute.Remove -R 1-3,18,20,65,78-79,119-120 -i "+ rootpath + "/joined_global_features.arff -o "+ rootpath +"/joined_global_features_simply.arff"
os.system(command)

#check result      
command = "java -Xmx1024M -cp " + rootpath + "/models/weka.jar weka.classifiers.meta.RotationForest -t " + rootpath +"/joined_global_features_simply.arff > " + rootpath + "/output"
print(command)
os.system(command)

#saving model
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