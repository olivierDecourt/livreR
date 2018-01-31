library(tables) # tableaux statistiques sur mesure

# répartition du prix moyen des maisons selon 
# le type de bien et le type de location
# NaN quand il n'y a pas de données
tabular(Factor(property_type,"")+(Total=1)~
          (Factor(room_type,"")+(Total=1))*
          Heading()*price*Heading()*mean, 
        data=houses)
#           Entire home/apt Private room Shared room Total
# House      192.6           62.06       59.5         155.4
# Townhouse  167.0           67.68       35.0         144.0
# Villa     1234.7          290.00        NaN        1167.2
# Total      218.0           64.04       54.6         176.0

# même tableau mais la case sans données est vide
tabular(Factor(property_type,"")+(Total=1)~
          (Factor(room_type,"")+(Total=1))*
          Heading()*price*DropEmpty()*Heading()*mean, 
        data=houses)
#           Entire home/apt Private room Shared room Total
# House      192.6           62.06       59.5         155.4
# Townhouse  167.0           67.68       35.0         144.0
# Villa     1234.7          290.00                   1167.2
# Total      218.0           64.04       54.6         176.0

# même tableau mais la case sans données contient un "-"
tabular(Factor(property_type,"")+(Total=1)~
          (Factor(room_type,"")+(Total=1))*
          Heading()*price*DropEmpty("-")*Heading()*mean, 
        data=houses)
#           Entire home/apt Private room Shared room Total 
# House      192.6           62.06       59.5         155.4
# Townhouse  167.0           67.68       35.0         144.0
# Villa     1234.7          290.00       -           1167.2
# Total      218.0           64.04       54.6         176.0
