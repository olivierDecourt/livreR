library(tables) # tableaux statistiques sur mesure

# répartition des appartements selon le type de bien
tabular(Factor(property_type) + 1 ~ 
          1 + Percent(), data=flats)
# property_type All   Percent 
# Apartment     50661  98.3823
# Condominium     266   0.5166
# Loft            567   1.1011
# All           51494 100.0000

# répartition des appartements selon le type de bien
# et le nombre lits (2 ou moins vs 3 et plus)
tabular(Factor(property_type) + 1 ~ 
          ((beds > 2) +
             (beds <=2) + 1)*Percent(), data=flats)
#               beds > 2 beds <= 2 All     
# property_type Percent  Percent   Percent 
# Apartment     13.5142  84.7225    98.3823
# Condominium    0.0602   0.4564     0.5166
# Loft           0.3224   0.7748     1.1011
# All           13.8968  85.9537   100.0000

# même tableau mais en % ligne
tabular(Factor(property_type) + 1 ~ 
          ((beds > 2) +
             (beds <=2) + 1)*Percent(denom="row"), data=flats)
#               beds > 2 beds <= 2 All    
# property_type Percent  Percent   Percent
# Apartment     13.74    86.12     100    
# Condominium   11.65    88.35     100    
# Loft          29.28    70.37     100    
# All           13.90    85.95     100  

# même tableau mais en % colonne
tabular(Factor(property_type) + 1 ~ 
          ((beds > 2) +
             (beds <=2) + 1)*Percent(denom="col"), data=flats)
#               beds > 2 beds <= 2 All    
# property_type Percent  Percent   Percent
# Apartment      97.2471  98.5676   98.3823
# Condominium     0.4332   0.5309    0.5166
# Loft            2.3197   0.9015    1.1011
# All           100.0000 100.0000  100.0000