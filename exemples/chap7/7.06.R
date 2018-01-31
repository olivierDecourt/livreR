library(Hmisc) # fonction describe
library(pastecs) # fonction stat.desc

# statistiques sur le data.table calendar
summary(calendar)
#   listing_id           date               price         
# Min.   :    2623   Length:9461700     Min.   :     1.0  
# 1st Qu.: 2476875   Class :character   1st Qu.:    60.0  
# Median : 5929580   Mode  :character   Median :    80.0  
# Mean   : 6333491                      Mean   :   117.7  
# 3rd Qu.: 9836325                      3rd Qu.:   120.0  
# Max.   :13819274                      Max.   :110000.0   

# idem avec le package Hmisc (très lent)
describe(calendar)
# calendar 
# 
#  3  Variables      9461700  Observations
# -------------------------------------------------------------------
# listing_id 
#        n  missing distinct     Info     Mean      Gmd      .05 
#  9461700        0    44109        1  6333491  4854650   557625 
#      .10      .25      .50      .75      .90      .95 
#   944076  2476875  5929580  9836325 12771906 13308916 
# 
# lowest :     2623     3109     4886     4890     5317
# highest: 13818619 13818748 13818932 13819239 13819274
# -------------------------------------------------------------------
# date 
#        n  missing distinct 
#  9461700        0      366 
# 
# lowest : 2016-07-03 2016-07-04 2016-07-05 2016-07-06 2016-07-07
# highest: 2017-06-29 2017-06-30 2017-07-01 2017-07-02 2017-07-03
# -------------------------------------------------------------------
# price 
#        n  missing distinct     Info     Mean      Gmd      .05 
#  9461700        0     1343    0.999    117.7    95.19       40 
#      .10      .25      .50      .75      .90      .95 
#       45       60       80      120      195      255 
# 
# Value            0    1000    2000    3000    4000    5000    6000
# Frequency  9377222   76335    5122     909     548       1     366
# Proportion   0.991   0.008   0.001   0.000   0.000   0.000   0.000
# 
# Value         8000   30000   32000   88000  100000  110000
# Frequency      365      48      17     365     298     104
# Proportion   0.000   0.000   0.000   0.000   0.000   0.000
# -------------------------------------------------------------------

# idem avec le package pastecs (affichage médiocre, messages)
stat.desc(calendar)
#                listing_id date        price
# nbr.val      9.461700e+06   NA 9.461700e+06
# nbr.null     0.000000e+00   NA 0.000000e+00
# nbr.na       0.000000e+00   NA 0.000000e+00
# min          2.623000e+03   NA 1.000000e+00
# max          1.381927e+07   NA 1.100000e+05
# range        1.381665e+07   NA 1.099990e+05
# sum                    NA   NA 1.113613e+09
# median       5.929580e+06   NA 8.000000e+01
# mean         6.333491e+06   NA 1.176969e+02
# SE.mean      1.373425e+03   NA 2.854097e-01
# CI.mean.0.95 2.691864e+03   NA 5.593928e-01
# var          1.784757e+13   NA 7.707378e+05
# std.dev      4.224639e+06   NA 8.779168e+02
# coef.var     6.670316e-01   NA 7.459130e+00
# Warning message:
#   In sum(x) : integer overflow - use sum(as.numeric(.))
