library(tables) # tableaux statistiques sur mesure

# prix moyen des appartements selon le type de bien
tabular(Factor(property_type)~price*mean, data=flats)
#               price 
# property_type mean  
# Apartment      95.03
# Condominium    79.49
# Loft          142.95

# 3e quartile de prix des appartements selon le type de bien
tabular(Factor(property_type)~Arguments(price,probs=0.75)*
          quantile, data=flats)
# property_type quantile
# Apartment     105.0   
# Condominium    95.0   
# Loft          158.5      

# moyenne et médiane du prix selon le type de bien
tabular(Factor(property_type)~price*(mean+median), 
        data=flats)
#               price        
# property_type mean   median
# Apartment      95.03  75   
# Condominium    79.49  65   
# Loft          142.95 111
