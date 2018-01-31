library(data.table) # gestion des données optimisée
library(dplyr) # gestion simplifiée des données

# copie du data.table calendar
cal <- calendar
# définition d'un index, donc d'un tri, sur l'identifiant
# et la date de location
setkey(cal, listing_id, date)
# ajout d'une variable "prix à la date précédente"
cal[,prix_precedent := lag(price)]
cal[,ecart := price - prix_precedent]
# quelques lignes pour voir le résultat
cal[60:65,]
# listing_id       date price prix_precedent ecart
# 1:       2623 2016-09-17    77             75     2
# 2:       2623 2016-09-18    72             77    -5
# 3:       2623 2016-09-19    75             72     3
# 4:       2623 2016-09-20    75             75     0
# 5:       2623 2016-09-21    75             75     0
# 6:       2623 2016-09-22    75             75     0
