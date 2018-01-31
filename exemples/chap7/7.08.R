library(reshape2) # transposition
library(dplyr) # gestion simplifiée des données
library(tibble) # affichage des données

# transposition : 1 ligne par logement, 1 colonne par date (pour que l'opération
# ne soit pas trop lente on se limite à 1 million de lignes)
# la mention d'une moyenne est factice car il n'y a qu'un
# prix par date et par logement
evol_prix <- dcast(calendar[1:1000000,],
                   listing_id ~ date,
                   fun = mean,
                   value.var = "price")
# calcul du 9e décile pour chaque date
q90_par_date <- summarise_all(evol_prix[,-1],
                              funs(quantile),
                              probs = 0.9,
                              na.rm = TRUE)
# aperçu du résultat : 1 ligne et 367 variables
glimpse(q90_par_date)
# Observations: 1
# Variables: 366
# $ `2016-07-03` <dbl> 200
# $ `2016-07-04` <dbl> 200
# $ `2016-07-05` <dbl> 195
# $ `2016-07-06` <dbl> 195.9
# $ `2016-07-07` <dbl> 190.5
# etc.
