from unified_planning.shortcuts import OneshotPlanner, PlanValidator
from unified_planning.io import PDDLReader
import os
import colorama
from colorama import Fore, Style

def getSubdirectories(parentDirectory):
    return [name for name in os.listdir(parentDirectory)
            if os.path.isdir(os.path.join(parentDirectory, name))]

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
        for i in range(1,2):
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

            reader = PDDLReader()
            parsed_problem = reader.parse_problem(original_domain, original_problem)

            plannerList = ['fast-downward']
            print(Fore.YELLOW + os.path.basename(os.path.dirname(original_problem)))

            for p in plannerList:
                with OneshotPlanner(name=p) as planner:
                    result = planner.solve(parsed_problem)
                    plan = result.plan
                    with PlanValidator(problem_kind=parsed_problem.kind) as validator:
                        check = validator.validate(parsed_problem, plan)
                        print(Fore.YELLOW + str(check))  
