# imports
# -----------------------------------------------------------------------------------------------------
import sys
import string
import os

# functions
# -----------------------------------------------------------------------------------------------------
def isFileEmpty(path):
    return os.stat(path).st_size==0

def getSubdirectories(parentDirectory):
    return [name for name in os.listdir(parentDirectory)
            if os.path.isdir(os.path.join(parentDirectory, name))]

def addGlobalFeatures(joinedEmpty, currentProblem):
    """
    Adds the `currentProblem` features into the `joined_global_features` file
    
    :param joinedEmpty: True if `joined_global_features` file is empty
    :param currentProblem: Problem from which to extract global features, to be later added inside `joined_global_features`
    """
    try:
	    # Read global_features file relative to the `currentProblem`
        current_global_features = open(os.path.join(currentProblem, "/global_features.arff"), 'r')
        # check se il file joined_global_features e' vuoto
        if(not joinedEmpty):
            # `joined_global_features` isn't empty
            # Read file until '@data' tag and paste the following lines into the `joined_global_features` file

            # Lines to be added
            toBeAdded = [] 

            # Set to True after encountering '@data' tag
            startAppend = False

            line = current_global_features.readline()
            while(line != ""):
                
                if(startAppend and line != "\n"):
                    toBeAdded.append(line)    
                
                if(line == "@data\n"):
                    startAppend = True

                line = current_global_features.readline()
                
            joined_global_features.writelines(toBeAdded)
        else:
            # File is empty
            # All lines inside `global_features` must be appended
            lines = current_global_features.readlines()
            joined_global_features.writelines(lines)
            
        joined_global_features.flush()    
        current_global_features.close()
    except:
	    print("No global_features file relative to the current problem")
    
# main
# -----------------------------------------------------------------------------
if __name__ == '__main__':
    route = ""
    joined_path = "/joined_global_features.arff"

    route = os.path.dirname(__file__)

    # If joined file already exists, it gets removed (may exists as remnant of past executions)    
    if os.path.exists(os.path.join(route, joined_path)):
        os.remove(os.path.join(route, joined_path))

    # Create and open file joined_global, in `append` mode
    joined_global_features = open(os.path.join(route, joined_path), 'a')

    pathIPCs = os.path.join(route, "domain")

    ipcList = getSubdirectories(pathIPCs)

    # Enter specific IPC competition folder
    for specificIPC in ipcList:
        pathCurrentIPC = os.path.join(pathIPCs, specificIPC)
        domainList = getSubdirectories(pathCurrentIPC)
        # Enter specific Domain from IPC competition
        for specificDomain in domainList:
            pathCurrentDomain = os.path.join(pathCurrentIPC, specificDomain)
            resultList = getSubdirectories(pathCurrentDomain)
            # Enter specific problem Result folder
            for specificResult in resultList:
                pathCurrentResult = os.path.join(pathCurrentDomain, specificResult)
                addGlobalFeatures(isFileEmpty(os.path.join(route, joined_path)), pathCurrentResult)
    joined_global_features.close()    