# statistiques sur calendar
# on remarque que la colonne date est un texte
summary(calendar)
# listing_id           date               price       
# Min.   :    2623   Length:9461700     Min.   :     1.0  
# 1st Qu.: 2476875   Class :character   1st Qu.:    60.0 
# Median : 5929580   Mode  :character   Median :    80.0  
# Mean   : 6333491                      Mean   :   117.7   
# 3rd Qu.: 9836325                      3rd Qu.:   120.0
# Max.   :13819274                      Max.   :110000.0   

# en transformant la date en Date
# ... ce qui est très lent ...
summary(as.Date(calendar$date))
# Min.      1st Qu.       Median         Mean 
# "2016-07-03" "2016-10-10" "2017-01-12" "2017-01-08" 
# 3rd Qu.         Max. 
# "2017-04-09" "2017-07-03" 

# statistiques sur un facteur, la colonne 
# cancellation_policy de houses
summary(factor(houses$cancellation_policy))
#        flexible        moderate          strict 
#             216             167             246 
# super_strict_30 super_strict_60 
#               4               6

# statistiques sur un vecteur numérique
summary(houses$price)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#   20      60     100     176     197    3608 

# pour comparaison, la moyenne (précise) du même vecteur
mean(houses$price)
# [1] 175.9937