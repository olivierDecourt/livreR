library(ggplot2) # fonctions graphiques

# diagramme en bâtons côte à côte selon le type
# de location et la politique d'annulation
ggplot(houses)+
  aes(x = gsub(" ","\n",room_type), 
      fill = cancellation_policy) +
  geom_bar(position = "dodge")+
  labs(x="Type de bien loué")+
  # quelques ajouts pour gérer les couleurs
  scale_fill_brewer(palette="Greys")+
  theme_bw()