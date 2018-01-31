library(data.table) # gestion des données optimisée

# copie du data.table flats
apparts <- flats

# ratio prix/moyenne du prix de ce type de logement
apparts[, ratio := price / mean(price), by=room_type]

# même calcul avec la fonction stats::ave
apparts$ratio2 <- ave(apparts$price, apparts$room_type, 
                      FUN=function(x){x/mean(x)})

# comparaison des 2 vecteurs obtenus : sont-ils équivalents ?
identical(apparts$ratio2, apparts$ratio) 
# [1] TRUE
