library(data.table) # gestion des données optimisée
library(dplyr) # gestion simplifiée des données

# copie du data.table flats
apparts <- flats

# tri de flats par code postal puis par prix
setorder(apparts, zipcode, price)
# calcul, en accumulation, du nombre de logements
# accueillant au moins 3 personnes
apparts[, nb_logements_pour_trois :=
          cumsum(accommodates >= 3),
        zipcode]

# combien de logements pour au moins 3 personnes
# dans le 14e arrondissement à moins de 100 euros ?
apparts[price <= 99 & zipcode == "75014", 
        max(nb_logements_pour_trois)]
# [1] 600