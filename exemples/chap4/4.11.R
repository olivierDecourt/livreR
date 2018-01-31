library(data.table) # gestion des données optimisée

# création d'un index sur la colonne "code postal"
setkey(flats,zipcode)
microbenchmark(summary(flats["75014",]$price), times=1000L)
# temps médian sur 1000 exécutions : 1,27 msec

# suppression de l'index
setkey(flats, NULL)
summary(flats[zipcode=="75014"]$price)
# temps médian sur 1000 exécutions : 1,14 msec
# résultat commun...
#   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#  17.00   50.00   70.00   82.02   95.00  701.00 

# création d'un index sur la colonne "nombre de chambres"
setkey(flats,bedrooms)
summary(flats[.(1:3)]$price)
# temps médian sur 1000 exécutions : 7,32 msec

# suppression de l'index
setkey(flats, NULL)
summary(flats[bedrooms %in% 1:3,]$price)
# temps médian sur 1000 exécutions : 6,78 msec
# résultat commun...
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#   9.0    59.0    80.0   100.4   120.0  6081.0

# création d'un index sur la colonne "quartier"
setkey(flats, neighbourhood_cleansed)
nrow(flats["Bourse"])
# [1] 1578

nrow(flats[c("Louvre","Temple")])
# [1] 3155

# suppression de l'index
setkey(flats, NULL)