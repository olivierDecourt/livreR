# prix moyen par type d'appartement et nombre de chambres
aggregate(price ~ property_type + bedrooms,
          flats,
          mean,
          na.rm = TRUE)
#    property_type bedrooms      price
# 1      Apartment        0   65.75229
# 2    Condominium        0   58.98889
# 3           Loft        0   79.20833
# 4      Apartment        1   80.62704
# 5    Condominium        1   79.89552
# 6           Loft        1  113.13605
# 7      Apartment        2  146.79084
# 8    Condominium        2  117.07143
# 9           Loft        2  172.35833
# 10     Apartment        3  229.41434
# 11   Condominium        3  112.88889
# 12          Loft        3  238.80000
# 13     Apartment        4  312.14439
# 14   Condominium        4  197.00000
# 15          Loft        4  316.18750
# 16     Apartment        5  473.12963
# 17   Condominium        5  191.00000
# 18          Loft        5  748.00000
# 19     Apartment        6  714.22222
# 20     Apartment        7 1603.00000

# statistiques des prix par type de maison
aggregate(price ~ room_type,
          houses,
          summary)
#         room_type price.Min. price.1st Qu. price.Median price.Mean
# 1 Entire home/apt   25.00000      90.00000    140.00000  217.98710
# 2    Private room   20.00000      35.00000     49.00000   64.04142
# 3     Shared room   35.00000      35.00000     50.00000   54.60000
#   price.3rd Qu. price.Max.
# 1     241.00000 3608.00000
# 2      70.00000  601.00000
# 3      53.00000  100.00000
