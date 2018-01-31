# maisons du 14e arrondissement
maisons_75014 <- subset(houses, zipcode == "75014")
# mise en facteur du type de logement
maisons_75014$room_type <- factor(maisons_75014$room_type)
# nuage de points avec marqueur en fonction du type de bien
plot(price ~ beds, 
     maisons_75014, 
     pch = as.numeric(room_type))
