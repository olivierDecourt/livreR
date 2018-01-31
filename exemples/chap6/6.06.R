library(data.table) # gestion simplifiée des données

# si on empile deux data.tables, houses et flats,
# on obtient un data.table (car il y a une fonction
# data.table::rbind)
class(rbind(houses,flats))
# [1] "data.table" "data.frame"

# si on empile un data.table (houses) et un tibble,
# on obtient un data.table
class(rbind(houses,as_tibble(flats)))
# [1] "data.table" "data.frame"

# si on empile un data.frame et un tibble, on obtient
# un data.frame
class(rbind(as.data.frame(houses),as_tibble(flats)))
# [1] "data.frame"

# on vérifie que les lignes s'additionnent
nrow(rbind(houses,flats))
# [1] 52133
nrow(houses) + nrow(flats)
# [1] 52133

# copie du data.table flats
apparts <- flats
# calcul du prix par nuit et par personne
apparts$prix_personne <- apparts$price / apparts$accommodates
# la nouvelle variable n'existe pas dans houses --> erreur
base::rbind(houses,apparts)
# Error in rbindlist(l, use.names, fill, idcol) : 
#   Item 2 has 22 columns, inconsistent with item 1 which has 21 columns

# avec l'option fill=TRUE, on obtient bien l'empilement et 22 variables
ncol(rbind(houses,apparts,
           fill=TRUE))
# [1] 22

# en tête de l'empilement, des NA venus de houses
head(rbind(houses,apparts,
           fill=TRUE)[,prix_personne])
# [1] NA NA NA NA NA NA

# en fin de l'empilement, des valeurs venues de apparts
tail(rbind(houses,apparts,
           fill=TRUE)[,prix_personne])
# [1] 14.75000 14.66667 20.00000 16.00000 21.00000 13.00000
