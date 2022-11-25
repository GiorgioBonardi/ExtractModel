import os               # path and process management
import sys              # argv, exit
import argparse
from unified_planning.engines import ValidationResultStatus, results
from unified_planning.shortcuts import OneshotPlanner, PlanValidator
from unified_planning.io import PDDLReader

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

rootpath = os.path.dirname(__file__)

pathTestDomain = os.path.join(rootpath, "test-model")
pathModels = os.path.join(rootpath, "models")

original_domain = os.path.join(pathTestDomain, "domain.pddl")
print(original_domain)

original_problem = os.path.join(pathTestDomain, "p30.pddl")
print(original_problem)

pathResult = os.path.join(pathTestDomain, "result30")
print(pathResult)

if(not os.path.isdir(pathResult)):
    os.mkdir(pathResult)
os.chdir(pathResult)
extract_features(original_domain, original_problem, pathResult)

res_planner = ['enhsp, True','tamer, True','fast-downward, True','lpg, True']
res_planner_str = str(res_planner)[1:-1:1].replace("',", "'")
command = "python2.7 "+ pathModels + "/joinFile.py " + pathResult + " " + res_planner_str
print(command)
os.system(command)

#creazione del simply
command = "java -cp "+ rootpath +"/models/weka.jar -Xms256m -Xmx1024m weka.filters.unsupervised.attribute.Remove -R 1-3,18,20,65,78-79,119-120 -i "+ pathResult + "/global_features.arff -o "+ pathTestDomain +"/global_features_simply.arff"
os.system(command)


#comando che prende in ingresso il model (gia' allenato) e il train set utilizzati per avere una predizione in output nel file outputModel
command = "java -Xms256m -Xmx1024m -cp "+ rootpath +"/models/weka.jar weka.classifiers.meta.RotationForest -l "+rootpath+"/RotationForest.model -T "+pathTestDomain+"/global_features_simply.arff -p 113 > "+pathResult+"/outputModel"
os.system(command)

command = "python2.7 "+ rootpath +"/models/parseWekaOutputFile.py "+pathResult+"/outputModel "+pathResult+"/listPlanner"
os.system(command)