library(data.table) # gestion des données optimisée

# import du fichier houses.csv depuis Internet
houses <- fread("http://www.od-datamining.com/livreR/houses.csv",
                sep = ",")

# pour un fichier local, on reste sur une syntaxe identique à read.delim
# setwd("C:/olivier/dunod/r")
# houses <- fread("houses.csv",
#                 sep = ",")

# import du fichier flats.csv depuis Internet
# on reprend les types des colonnes de houses
# avec sapply(houses, class)
flats <- fread("http://www.od-datamining.com/livreR/flats.csv",
               sep = ",",
               colClasses = sapply(houses, class))

# import du fichier calendar.csv depuis Internet
calendar <- fread("http://www.od-datamining.com/livreR/calendar.csv",
                  sep = ",",
                  colClasses = c("integer",
                                 "Date",
                                 "numeric"))

# les contenus des objets sont les mêmes que ceux de l'exemple 3.01
# mais ce sont des data.tables en plus d'être des data.frames
