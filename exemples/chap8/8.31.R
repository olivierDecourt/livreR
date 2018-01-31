library(ggplot2) # fonctions graphiques

# barres empilées 100% selon le type de location
# et la politique d'annulation
ggplot(houses) + 
  aes(x = gsub(" ","\n",room_type),
      fill = cancellation_policy) +
  geom_bar(position = "fill") +
  coord_flip() + # barres horizontales
  labs(x = "Type de bien loué",
       y = "Fraction (%) des biens")+
  # ajouts pour gérer les couleurs
  scale_fill_brewer(palette="Greys")+
  theme_minimal()
