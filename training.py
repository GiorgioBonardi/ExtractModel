##estrazione features per domain/problem
##far provare a risolvere il problema per gli N planner
##unire features + nomePlanner + true/false 
    ##si potrebbe modificare joinFile.py passandogli la lista dei planner e lista di true/false

import os               # path and process management
import sys              # argv, exit
import argparse
from unified_planning.shortcuts import *
from unified_planning.io.pddl_writer import *
from unified_planning.io.pddl_reader import *
#from unified_planning.engines.factory import *

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
    reader = PDDLReader()
    parsed_problem = reader.parse_problem(domain, problem)

    # engines: Dict[str, Tuple[str, str]] = DEFAULT_ENGINES
    # tempList = list(engines.keys())
    plannerList = ['enhsp'] # to be added: lpg !!! NOT FUNCTIONING !!!
    
    # for p in tempList:
    #     try:
    #         with OneshotPlanner(name=p) as planner:
    #             if hasattr(planner, 'solve'):
    #                 plannerList.append(p)
    #     except:
    #         pass
    res = []
    for p in plannerList:
        with OneshotPlanner(name=p) as planner:
            result = planner.solve(parsed_problem)
            toBeAppended = ","+ p + ", " + str(result.status in unified_planning.engines.results.POSITIVE_OUTCOMES)
            res.append(toBeAppended)
    # res = ['enhsp, True','tamer, False','fast-downward, True','lpg, False']
    return res

pathname = os.getcwd()
currentpath = os.path.abspath(pathname)
rootpath = os.path.abspath(os.path.join(currentpath,"..")) + "/ExtractModel"
pathDomain = pathname + "/domain"
##estrazione features per domain/problem
for dir in os.listdir(pathDomain):  
    pathSpecificDomain = pathDomain + "/" + dir
    for i in range(1,2):
    #i = 1
    #for file in os.listdir(pathSpecificDomain):
        original_domain = pathSpecificDomain + "/p01-domain.pddl"
        original_problem = pathSpecificDomain + "/p"+str(i).zfill(2)+".pddl"
        currentpath = pathSpecificDomain + "/result"+str(i).zfill(2)

        if(os.path.isfile(original_problem)):
            if(not os.path.isdir(currentpath)):
                os.mkdir(currentpath)
            os.chdir(currentpath)
            extract_features(original_domain, original_problem, currentpath)

            ##far eseguire il problem ai 4 pianificatori e raccogliere un array di bool es: [true, false, true, true] per poi passarlo a joinFile
            res_planner = execute_problem(original_domain, original_problem)
            #join file
            actual_rootpath = rootpath + "/models"
            res_planner_str = str(res_planner)[1:-1:1].replace("',", "'")
            print(res_planner_str)
            command = "python2.7 "+ actual_rootpath + "/joinFile.py " + currentpath + " " + res_planner_str
            print(command)
            os.system(command)

            #i+=1


#creazione file "joined_global_features" unico
command = "python2.7 "+ pathname + "/join_globals.py " + pathname
print(command)
os.system(command)

#rimozione attributi 
##TODO: la dobbiamo fare o no?
command = "java -cp "+ rootpath +"/models/weka.jar -Xms256m -Xmx1024m weka.filters.unsupervised.attribute.Remove -R 1-3,18,20,65,78-79,119-120 -i "+ pathname + "/joined_global_features.arff -o "+ pathname +"/joined_global_features_simply.arff"
os.system(command)

#check result      
command = "java -Xmx1024M -cp " + pathname + "/models/weka.jar weka.classifiers.meta.RotationForest -t " + pathname +"/joined_global_features_simply.arff > " + pathname + "/output"
print(command)
os.system(command)

#saving model
command = "java -Xmx1024M -cp " + pathname + "/models/weka.jar weka.classifiers.meta.RotationForest  -t " + pathname + "/joined_global_features_simply.arff -d " + pathname + "/RotationForest.model"
print(command)
os.system(command)

# #comando che prende in ingresso il model (gia' allenato) e il train set utilizzati per avere una predizione in output nel file outputModel
# command = "java -Xms256m -Xmx1024m -cp "+ pathname +"/models/weka.jar weka.classifiers.meta.RotationForest -l "+pathname+"/RotationForest.model -T "+pathname+"/global_features_simply.arff -p 113 > "+pathname+"/outputModel"
# os.system(command)

# command = "python2.7 "+ pathname +"/models/parseWekaOutputFile.py "+pathname+"/outputModel "+pathname+"/listPlanner"
# os.system(command)


##far provare a risolvere il problema per gli N planner

# planners = ["tamer", "enhsp", "pyperplan", "lgp"]

# for i in xrange(0, len(planners)):
#     planner = rootpath + "/" + planners[i] + "/plan"
#     run (planner, original_domain, original_problem, result, timeout)