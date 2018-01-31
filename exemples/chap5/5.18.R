# copie du data.table flats
apparts <- flats

# création d'un facteur à 2 valeurs : < 60 euros/nuit et > 60
apparts$categ_prix <- factor(ifelse(apparts$price < 60,
                                    "0-59 €",
                                    "60 € et +"))
summary(apparts$categ_prix)
#  0-59 €    60 € et + 
#   15383        36111

# création d'un facteur à 3 valeurs : tranches avec
# des limites à 60 et 120 euros/nuit
apparts$categ_prix <- factor(ifelse(apparts$price < 60,
                                    "< 60",
                                    ifelse(apparts$price < 120,
                                           "60-120",
                                           "> 120")),
                             c("< 60","60-120","> 120"),
                             ordered = TRUE)
summary(apparts$categ_prix)
# < 60    60-120    > 120 
# 15383    24924    11187