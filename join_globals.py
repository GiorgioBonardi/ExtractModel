import sys
import string
import os

# functions
# file is empty
def isFileEmpty(path):
    return os.stat(path).st_size==0

def getSubdirectories(root):
    return [name for name in os.listdir(root)
            if os.path.isdir(os.path.join(root, name))]


# contenuto ciclo internoglobal_features
# -----------------------------------------------------------------------------------------------------
def addGlobalFeatures(joinedEmpty, currentProblem):
    # prendere i file global_features_simply del currentProblem relativo al currentDomain
    # aprire il file global specifico, argomento path e modalita read
    try:
	    # lettura current global
        current_global_features = open(currentProblem + "/global_features.arff", 'r')
        # check se il file joined_global_features e' vuoto
        if(not joinedEmpty):
            # file non e' vuoto

            # se il file joined_global non e' vuoto allora leggere il file fino alla riga "@data" e incollare le righe
            # successive in coda al file joined_global_features

            toBeAdded = [] #righe da aggiungere al file finale
            startAppend = False #vero dopo aver incontrato "@data", devo iniziare ad appendere?


            line = current_global_features.readline() #leggi la prima riga
            while(line != ""):
                
                if(startAppend and line != "\n"):
                    toBeAdded.append(line)    
                
                if(line == "@data\n"):
                    #print ("trovato data, setto startAppend a TRUE")
                    startAppend = True

                line = current_global_features.readline() #leggi la prima riga
                
            joined_global_features.writelines(toBeAdded) # fa append o sovrascrive ??
        else:
            # file vuoto
            # dobbiamo caricare tutto il contenuto di current_global_features nel file
            lines = current_global_features.readlines() # leggo tutte le righe di current_global_features
            joined_global_features.writelines(lines) # scrivo le righe lette sul file joined_global_features
            
        joined_global_features.flush()    
        current_global_features.close()
    except:
	    print ("No global_features file relative to the current problem")
    
# main
# -----------------------------------------------------------------------------
if __name__ == '__main__':
    route = ""
    joined_path = "/joined_global_features.arff"

    # verifico gli argomenti passati
    if (len(sys.argv) == 2):
        route = sys.argv[1]
        
    else:
        print ("ERROR:::: Need one argument to create the joined global features file") 
        sys.exit(-1)
        
    # se joined esiste gia (reduce da esecuzione passata del programma), rimuoverlo 
    if os.path.exists(route + joined_path):
        os.remove(route + joined_path)

    # aprire file joined global, se non esiste viene creato, in modalita' append
    joined_global_features = open(route + joined_path, 'a')

    pathDomains = route + "/domain"

    domainsList = getSubdirectories(pathDomains)

    for domain in domainsList:
        currentDomain = pathDomains + "/" + domain
        problemsList = getSubdirectories(currentDomain)
        for problem in problemsList:
            # joined_global_features = open(route + joined_path, 'a')
            currentProblem = currentDomain + "/" + problem
            addGlobalFeatures(isFileEmpty(route + joined_path), currentProblem)
    joined_global_features.close()    

    # da fare ciclo esterno per scorrere tutte le cartelle "domain"
    # for domain in route.getDomains()
    #     currentDomain = "domain path"

    #     # e di queste tutte le cartelle "problem" con un ciclo interno
    #     for problem in currentDomain.getProblems()
    #         currentProblem = "problem path"
    #         addGlobalFeatures(joined_global_features, currentDomain, currentProblem)
            
    # chiusura file joined_global_features
    

    # head = Head([])
    # union_final = union_final.replace("-nan", "?")
    # writeFile(route+"/global_features.arff", union_final, head)




# cosi...
#************************
# if (os.path.exists(route + "/joined_global_features")):
#     # file esiste
#     joined_global_features.open(route + "/joined_global_features", a)
#     toBeAdded = "" #righe da aggiungere al file finale
#     bool startAppend = False #vero dopo aver incontrato "@data", devo iniziare ad appendere?

#     line = current_global_features_simply.readline() #leggi la prima riga
#     while(line != ""):
#         if(startAppend == True):
#             toBeAdded.append(line)
#             line = current_global_features_simply.readline()
        
        
#         if(line == "@data"):
#             startAppend = True
        
    
#     joined_global_features.writelines(toBeAdded) # fa append o sovrascrive ??

# else :
#     # file non esiste
#************************






