library(tidyr) # fonctions de gestion des données

# éclatement en n variables de la liste des équipements
# le nombre de 30 est choisi volontairement trop grand
# et génère des messages ("Too few values...")
separate(houses,
         amenities,
         paste("am",1:30,sep=""),
         sep="\\|",
         remove=FALSE)[, paste("am",1:3,sep=""), with=FALSE]
#                    am1      am2               am3
#   1:                TV Internet Wireless Internet
#   2:                TV Cable TV          Internet
#   3:                TV Internet Wireless Internet
#   4:                TV Cable TV          Internet
#   5:          Cable TV Internet Wireless Internet
#  ---                                             
# 635:                TV Internet Wireless Internet
# 636: Wireless Internet  Kitchen           Heating
# 637: Wireless Internet  Heating            Washer
# 638:                TV Cable TV          Internet
# 639:                TV Cable TV          Internet