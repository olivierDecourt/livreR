library(dplyr) # gestion simplifiée des données

# copies des data.tables calendar et houses
cal <- calendar
maisons <- houses

# prix : pas de données manquantes
summary(cal$price)
# Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
#  1.0     60.0     80.0    117.7    120.0 110000.0 

# les valeurs 999 sont transformées en NA
cal[,price := na_if(price, 999)]
# on voit 92 valeurs NA désormais
summary(cal$price)
# Min.  1st Qu.   Median     Mean  3rd Qu.     Max.     NA's 
#  1.0     60.0     80.0    117.7    120.0 110000.0       92 

# les valeurs texte vides sont remplacées par NA
maisons[,neighbourhood := na_if(neighbourhood,"")]
# il y en a 96
nrow(maisons[is.na(maisons$neighbourhood),])
# [1] 96

# on complète ces 96 NA par la valeur de la colonne
# neighbourhood_cleansed et, si cette dernière vaut aussi
# NA, par un texte "?"
maisons$neighbourhood <- coalesce(maisons$neighbourhood,
                                  maisons$neighbourhood_cleansed,
                                  "?")
# il n'y a plus de NA dans le résultat
nrow(maisons[is.na(maisons$neighbourhood),])
# [1] 0
