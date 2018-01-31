library(data.table) # gestion des données optimisée

# copie du data.table flats
apparts <- flats

# création de rangs décroissants de prix/nuit
# 1 = prix le plus élevé, 2 = 2e prix le plus élevé, ...
apparts$rang <- frank(apparts, -price)

# top 3 des prix d'appartement loués
apparts[apparts$rang <= 3,.(id,zipcode,accommodates, 
                            bedrooms,price, rang)]
#          id zipcode accommodates bedrooms price rang
# 1:  8895576   75015           16        1  3506    2
# 2: 11640000   75002            2        1  6081    1
# 3:  7284676   75018            4        2  3306    3

# même manipulation avec la fonction base::rank
apparts$rang <- rank(-apparts$price)
apparts[apparts$rang <= 3,.(id,zipcode,accommodates, 
                            bedrooms,price, rang)]
# même résultat

# rang sur les évaluations des logements, qui contiennent
# des ex-aequos (les rangs sont rééchelonnés aléatoirement)
# et des valeurs manquantes (qui restent NA)
set.seed(1) # générateur aléatoire --> résultat reproductible
apparts$rang_avis <- rank(-apparts$review_scores_rating,
                          na.last="keep", ties="random")
summary(apparts$rang_avis)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
#    1    9120   18240   18240   27359   36478   15016
