library(data.table) # gestion des données optimisée
library(dplyr) # gestion simplifiée des données

# copie des data.tables houses et flats
maisons <- houses
apparts <- flats

# création d'un facteur à 3 valeurs : tranches avec
# des limites à 60 et 120 euros/nuit
maisons$categ_prix <- ordered(
  case_when(
    maisons$price < 60 ~ "< 60",
    maisons$price < 120 ~ "60-120",
    TRUE ~ "> 120"
  ),
  levels=c("< 60","60-120","> 120"))
summary(maisons$categ_prix)
#  < 60   60-120    > 120 
#   155      189      295 

# même opération avec une écriture de data.table
apparts[, categ_prix := ordered(
  case_when(
    price < 60 ~ "< 60",
    price < 120 ~ "60-120",
    TRUE ~ "> 120"),
  levels=c("< 60","60-120","> 120") 
)]
summary(apparts$categ_prix)
#  < 60   60-120    > 120 
# 15383    24924    11187
