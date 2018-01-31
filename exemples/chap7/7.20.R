library(tables) # tableaux statistiques sur mesure

# répartition des appartements par type de bien
tabular(Factor(property_type)~1, data=flats)
# property_type All  
# Apartment     50661
# Condominium     266
# Loft            567

# répartition des appartements par type de bien
# si le prix par nuit est inférieur à 100 euros
tabular(Factor(property_type)~(price < 100), data=flats)
# property_type price < 100
# Apartment     35761      
# Condominium     208      
# Loft            246      

# même tableau mais présentation différente
tabular(Factor(property_type)*(price < 100)~1, data=flats)
# property_type             All  
# Apartment     price < 100 35761
# Condominium   price < 100   208
# Loft          price < 100   246

# répartition des appartements par type de bien et
# par tarif par nuit (2 catégories par rapport à 100 euros)
tabular(Factor(property_type)*Factor(price < 100)~1, data=flats)
# property_type price < 100 All  
# Apartment     FALSE       14900
#               TRUE        35761
# Condominium   FALSE          58
#               TRUE          208
# Loft          FALSE         321
#               TRUE          246

# même tableau mais présentation différente
tabular(Factor(property_type)+1~Factor(price < 100), data=flats)
#               price < 100      
# property_type FALSE       TRUE 
# Apartment     14900       35761
# Condominium      58         208
# Loft            321         246
# All           15279       36215
