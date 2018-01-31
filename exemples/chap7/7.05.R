library(Hmisc) # fonction describe
library(pastecs) # fonction stat.desc

# statistiques avec 5 chiffres significatifs
# comme le maximum est un entier de 4 chiffres,
# ça ne permet pas d'afficher des décimales
summary(houses$price, digits=5)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#   20      60     100     176     197    3608 

# statistiques sur les évaluations
summary(houses$review_scores_rating)
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
# 20.00   89.00   94.00   91.93  100.00  100.00     235 

# même question avec le package Hmisc
describe(houses$price)
# houses$price 
#    n  missing distinct     Info     Mean      Gmd      .05 
#  639        0      158    0.999      176    180.4     30.0 
#  .10      .25      .50      .75      .90      .95 
# 38.0     60.0    100.0    197.0    342.8    501.0 
# 
# lowest :   20   21   22   24   25, highest: 1253 2004 2154 2765 3608 

# et avec le package pastecs
stat.desc(houses$price)
#      nbr.val     nbr.null       nbr.na          min          max 
# 6.390000e+02 0.000000e+00 0.000000e+00 2.000000e+01 3.608000e+03 
#        range          sum       median         mean      SE.mean 
# 3.588000e+03 1.124600e+05 1.000000e+02 1.759937e+02 1.052896e+01 
# CI.mean.0.95          var      std.dev     coef.var 
# 2.067560e+01 7.083886e+04 2.661557e+02 1.512302e+00 

# en arrondissant le résultat de stat.desc, c'est plus lisible
round(stat.desc(houses$price),2)
#      nbr.val     nbr.null       nbr.na          min          max 
#       639.00         0.00         0.00        20.00      3608.00 
#        range          sum       median         mean      SE.mean 
#      3588.00    112460.00       100.00       175.99        10.53 
# CI.mean.0.95          var      std.dev     coef.var 
#        20.68     70838.86       266.16         1.51
