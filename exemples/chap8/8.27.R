library(ggplot2) # fonctions graphiques

# maisons du 14e arrondissement
maisons_75014 <- subset(houses, zipcode == "75014")
# mise en facteur du type de location
maisons_75014$room_type <- factor(maisons_75014$room_type)
# nuage de points avec un marqueur par type de location
ggplot(maisons_75014)+
  aes(x=beds, y=price, shape=room_type)+
  geom_point(size=2)
