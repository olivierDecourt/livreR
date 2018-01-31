library(ggplot2) # fonctions graphiques

# définition d'un diagramme en bâtons
barres <- ggplot(flats)+
  aes(x=property_type)+
  geom_bar()+
  theme_bw()+ # jeu de couleurs
  labs(y="Nombre de logements", # libellés d'axes
       x="Type de logement")
# affichage du graphique (données flats)
barres
# même graphique (données houses)
barres %+% houses
