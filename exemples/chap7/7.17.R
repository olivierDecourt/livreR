# répartition des maisons par type de location
prop.table(table(houses$room_type))
# Entire home/apt    Private room     Shared room 
#     0.727699531     0.264475743     0.007824726

# idem mais présenté entre 0 et 100 avec une décimale
round(prop.table(table(houses$room_type))*100,1)
# Entire home/apt    Private room     Shared room 
#            72.8            26.4             0.8 

# répartition des maisons par type de location
# et par type de maison, en % du total
round(prop.table(table(houses$property_type,
                       houses$room_type))*100,1)
#           Entire home/apt Private room Shared room
# House                60.1         23.3         0.6
# Townhouse            10.6          3.0         0.2
# Villa                 2.0          0.2         0.0

# même répartition, mais en % ligne
round(prop.table(table(houses$property_type,
                       houses$room_type),1)*100,1)
#           Entire home/apt Private room Shared room
# House                71.5         27.7         0.7
# Townhouse            77.3         21.6         1.1
# Villa                92.9          7.1         0.0

# et en % colonne
round(prop.table(table(houses$property_type,
                       houses$room_type),2)*100,1)
#           Entire home/apt Private room Shared room
# House                82.6         88.2        80.0
# Townhouse            14.6         11.2        20.0
# Villa                 2.8          0.6         0.0
