# répartition des maisons par type de location
table(houses$room_type)
# Entire home/apt    Private room     Shared room 
#             465             169               5 

# répartition des maisons par type de location et
# type de bien loué
table(houses$property_type,
      houses$room_type)
#           Entire home/apt Private room Shared room
# House                 384          149           4
# Townhouse              68           19           1
# Villa                  13            1           0

# maisons du 14e arrondissement
maisons_75014 <- subset(houses, zipcode == "75014")
# répartition des types de location
# comme room_type est un texte, seuls les niveaux
# existants dans les données sont affichés
table(maisons_75014$room_type)
# Entire home/apt    Private room 
#              38              13 

# on recrée l'objet à partir de houses
maisons_75014 <- houses
# on change room_type en facteur (3 niveaux)
maisons_75014$room_type <- factor(maisons_75014$room_type)
# on sélectionne les maisons du 14e arrondissement
maisons_75014 <- subset(maisons_75014,
                        zipcode == "75014")
# cette fois tous les niveaux du facteur sont affichés,
# même ceux qu'on ne trouve plus dans les données
table(maisons_75014$room_type)
# Entire home/apt    Private room     Shared room 
#              38              13               0
