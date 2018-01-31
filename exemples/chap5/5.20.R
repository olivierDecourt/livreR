# copie du data.table flats
apparts <- flats

# élimination d'une éventuelle colonne du même nom
# message d'avertissement si elle n'existe pas
apparts$categ_prix <- NULL
# création d'une variable texte correspondant à
# des tranches de prix (60, 120 et 300 euros/nuit)
apparts$categ_prix[which(apparts$price < 60)] <- "< 60"
apparts$categ_prix[which(apparts$price >= 60 &
                           apparts$price < 120)] <- "60-120"
apparts$categ_prix[which(apparts$price >= 120 &
                           apparts$price < 300)] <- "120-300"
apparts$categ_prix[which(apparts$price >= 300)] <- "> 300"
# transformation en facteur ordonné
apparts$categ_prix <- ordered(apparts$categ_prix,
                              levels=c("< 60",
                                       "60-120",
                                       "120-300",
                                       "> 300"))
summary(apparts$categ_prix)
#  < 60    60-120    120-300   > 300 
# 15383     24924       9954    1233
