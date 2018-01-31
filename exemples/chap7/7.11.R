# 1er et 9e déciles des prix et du nombre de chambres des appartements
aggregate(cbind(price, bedrooms) ~ room_type,
          flats,
          quantile,
          probs=c(.1,.9))
#         room_type price.10% price.90% bedrooms.10% bedrooms.90%
# 1 Entire home/apt        47       181            0            2
# 2    Private room        30        80            1            1
# 3     Shared room        21        65            1            1
