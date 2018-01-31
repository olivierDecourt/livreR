library(dplyr) # gestion simplifiée des données

# prix moyen et nombre de maisons
summarise(houses,
          prix_moyen = mean(price),
          nombre_logements = length(price))
#   prix_moyen nombre_logements
# 1   175.9937              639

# moyenne et médiane du prix et du nombre de chambres
# la fonction summarise_at demande un data.frame ou un
# tibble en entrée, par un data.frame
summarise_at(as.data.frame(flats),
             c("price", "bedrooms"),
             funs(mean, median))
#   price_mean bedrooms_mean price_median bedrooms_median
# 1   95.47648            NA           75              NA

# même requête en ne tenant pas compte des valeurs NA
summarise_at(as.data.frame(flats),
             c("price", "bedrooms"),
             funs(mean=mean(., na.rm=TRUE), 
                  median=median(., na.rm=TRUE)))
#   price_mean bedrooms_mean price_median bedrooms_median
# 1   95.47648      1.047329           75               1

# même requête en personnalisant les noms de variables
summarise_at(as.data.frame(flats),
             c("price", "bedrooms"),
             funs(mean(., na.rm=TRUE), 
                  median(., na.rm=TRUE))) %>%
  setNames(c("moy_prix","moy_nb_chambres",
             "mediane_prix","mediane_nb_chambres"))
#   moy_prix moy_nb_chambres mediane_prix mediane_nb_chambres
# 1 95.47648        1.047329           75                   1
