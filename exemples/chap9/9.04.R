setwd("C:/olivier/dunod/r") # répertoire courant
# export dans un fichier à séparateur tabulation
write.table(houses,
            file="maisons.txt",
            sep="\t", # tabulation
            row.names = FALSE,
            fileEncoding = "latin1", # caractères accentués
            na = "") # les NA sont remplacés par du vide
