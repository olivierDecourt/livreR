# répartition des appartements selon le nombre de chambres
addmargins(table(flats$bedrooms))
#     0     1     2     3     4     5     6     7   Sum 
# 10444 30949  7482  1966   393    57     9     1 51301 

# répartition des appartements par nombre de chambres
# et type de logement
addmargins(table(flats$bedrooms,
                 flats$property_type))
#     Apartment Condominium  Loft   Sum
# 0       10282          90    72 10444
# 1       30521         134   294 30949
# 2        7334          28   120  7482
# 3        1897           9    60  1966
# 4         374           3    16   393
# 5          54           1     2    57
# 6           9           0     0     9
# 7           1           0     0     1
# Sum     50472         265   564 51301

# même tableau en % colonnes
# (avec un total général à 300% !)
round(addmargins(prop.table(table(flats$bedrooms,
                                  flats$property_type),
                            2))*100,  1)
#     Apartment Condominium  Loft   Sum
# 0        20.4        34.0  12.8  67.1
# 1        60.5        50.6  52.1 163.2
# 2        14.5        10.6  21.3  46.4
# 3         3.8         3.4  10.6  17.8
# 4         0.7         1.1   2.8   4.7
# 5         0.1         0.4   0.4   0.8
# 6         0.0         0.0   0.0   0.0
# 7         0.0         0.0   0.0   0.0
# Sum     100.0       100.0 100.0 300.0

# même tableau avec seulement le total ligne
round(addmargins(prop.table(table(flats$bedrooms,
                                  flats$property_type),
                            2),
                 1)*100,         1)
#     Apartment Condominium  Loft
# 0        20.4        34.0  12.8
# 1        60.5        50.6  52.1
# 2        14.5        10.6  21.3
# 3         3.8         3.4  10.6
# 4         0.7         1.1   2.8
# 5         0.1         0.4   0.4
# 6         0.0         0.0   0.0
# 7         0.0         0.0   0.0
# Sum     100.0       100.0 100.0
