import os
from unified_planning.io import PDDLReader

def parse(domain, problem, solution):
    res = []
    print("PROBLEM: " + problem)
    print("DOMAIN" + domain)
    reader = PDDLReader()
    try:
        parsed_problem = reader.parse_problem(domain, problem)
        # print("PROBLEM PARSED WITHOUT PROBLEM")
        # print(parsed_problem)
        solution[os.path.basename(os.path.dirname(problem))] = "parsed"
    except Exception as inst: 
        # print(type(inst))    # the exception instance
        # print(inst.args)     # arguments stored in .args
        # print(inst)
        solution[os.path.basename(os.path.dirname(problem))] = "not parsed"

    return solution
    
solution = {}
rootpath = os.path.dirname(__file__)
pathDomain = os.path.join(rootpath, "domain")
##estrazione features per domain/problem
for dir in os.listdir(pathDomain):  
    pathSpecificDomain = os.path.join(pathDomain, dir)
    for i in range(1,2):
    #i = 1
    #for file in os.listdir(pathSpecificDomain):
        original_domain = os.path.join(pathSpecificDomain, "p01-domain.pddl")
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
            sol_update = parse(original_domain, original_problem, solution)

            for s in sol_update.items():
                print(s)
            

