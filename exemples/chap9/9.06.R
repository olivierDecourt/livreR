# extrait d'un chunk de code R à intégrer dans un fichier .Rmd

library(knitr) # publication de tableaux vers markdown
# 10 premières lignes de l'objet houses et quelques colonnes
kable(houses[1:10,
             c("id","price","bedrooms","zipcode",
               "room_type","property_type")],
      caption="Extrait de houses (10 lignes)",
      format.args=list(big.mark=" ", # séparateur de milliers
                       decimal.mark=","),
      align=c("l","r","r","l","l","l"), # justification
      row.names = NA) # pas d'id de lignes
