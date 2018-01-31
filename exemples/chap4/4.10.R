library(data.table) # gestion des données optimisée

# maisons louées plus de 1000 euros/nuit
houses[price > 1000, .(id,price,review_scores_rating)]
#          id price review_scores_rating
#  1: 6041405  1253                   NA
#  2: 5859850  2154                   NA
#  3: 2234570  1002                   NA
#  4: 9063834  1102                   NA
#  5: 6042209  2765                   NA
#  6: 9459633  1002                   NA
#  7: 5216981  1002                   NA
#  8: 9105310  2004                   NA
#  9:  571017  1213                   96
# 10: 5879293  1213                  100
# 11: 9028169  3608                   NA

# maisons louées plus de 1000 euros/nuit
# et ayant des avis renseignés
houses[price > 1000 & ! is.na(review_scores_rating),
       .(id,price,review_scores_rating)]
#         id price review_scores_rating
# 1:  571017  1213                   96
# 2: 5879293  1213                  100

# maisons du 14e arrondissement de Paris ayant
# plus de 4 chambres
houses[zipcode == "75014" & bedrooms > 4,
       .(id,price,zipcode,beds)]
#         id price zipcode beds
# 1: 9309830   280   75014    6
# 2: 6985703   321   75014    6
# 3: 5216981  1002   75014    9
# 4:  623034   590   75014   10
# 5: 5879293  1213   75014    5

# maisons ayant entre 10 et 12 chambres ou
# entre 6 et 10 salles de bains
houses[bedrooms %in% 10:12 | bathrooms %in% 6:10,
       .(id,price,zipcode,bedrooms,bathrooms)]
#          id price zipcode bedrooms bathrooms
#  1:  636035    32   75020        1         6
#  2:  636531    28   75020        1         6
#  3:  565122    25   75020        1         6
#  4:  622751    31   75020        1         6
#  5:  556673    29   75020        1         6
#  6:  556635    26   75020        1         6
#  7:  565148    30   75020        1         6
#  8:  691860    24   75020        1         6
#  9:  689573    24   75020        1         6
# 10:  549295    30   75020        1         6
# 11:  549226    28   75020        1         6
# 12: 5289434   997               10         7
# 13: 1534310    90   75018        0         7

# statistiques sur les réservations avant le 31/10/2016
# ... opération lente à cause de la conversion en Date ...
summary(calendar[as.Date(date) <=
                   "2016-10-31"])
#   listing_id           date               price       
# Min.   :    2623   Length:2885072     Min.   :     1  
# 1st Qu.: 2829598   Class :character   1st Qu.:    60  
# Median : 6445479   Mode  :character   Median :    80  
# Mean   : 6769457                      Mean   :   119  
# 3rd Qu.:10679589                      3rd Qu.:   120  
# Max.   :13819274                      Max.   :110000
