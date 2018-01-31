# maisons du 14e arrondissement
maisons_75014 <- subset(houses, zipcode == "75014")
# mise en facteur du type de logement
maisons_75014$room_type <- factor(maisons_75014$room_type)
# nuage de points avec marqueur en fonction du type de bien
plot(price ~ beds, 
     maisons_75014, 
     pch = as.numeric(room_type))
# avec les fonctionnalités de la section 8.5.4 on ajoute
legend("topleft", # emplacement
       levels(maisons_75014$room_type), # valeurs
       pch=1:nlevels(maisons_75014$room_type)) # symboles
