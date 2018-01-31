library(ggplot2) # fonctions graphiques

# prix médian des maisons selon le type de location
prix_median <- aggregate(price~room_type,
                         houses,
                         FUN=median)
# diagramme en bâtons
ggplot(prix_median)+
  aes(x = gsub(" ","\n",room_type),
      y = price) +
  geom_bar(stat = "identity", # pour utiliser y
           fill = "gray60")+
  labs(x = "Type de bien loué",
       y = "Médiane des prix de location")