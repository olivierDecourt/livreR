library(data.table) # gestion des données optimisée
library(dplyr) # gestion simplifiée des données

# copie du data.table houses
maisons <- houses
# dimensions (nombre de lignes et colonnes)
dim(maisons)
# [1] 639  21

# suppression d'une colonne
maisons$neighbourhood <- NULL

# suppression de plusieurs colonnes, 
# écriture spécifique aux data.tables
maisons[,c("last_scraped",
           "host_since",
           "host_location") := NULL]

# élimination d'une colonne par dplyr
maisons <- select(maisons, -number_of_reviews)

# résultat : 5 variables de moins
dim(maisons)
# [1] 639  16
