# extrait d'un chunk de code R à intégrer dans un document .Rmd

library(tables) # tableaux croisés statistiques
library(pander) # publication de tableaux vers Markdown
tab <- tabular(Factor(property_type,"")+(Total=1)~
                 (price < 50)+
                 (price >= 50 & price < 100)+
                 (price >= 100)+(Total=1),
               data=houses)
pander(tab, # tableau croisé
       caption="Synthèse des maisons louées", # titre
       justify=c("left",rep("right",4)), # justifications
       big.mark=" ", # séparateur de milliers
       decimal.mark=",") # séparateur décimal