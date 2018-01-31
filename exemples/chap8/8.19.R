old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
# taille des textes (axes, titre, note)
par(cex.axis=0.7, cex.main=0.7, cex.sub=0.7)
par(mar=c(5,2,2,1)) # marges
# diagramme en bâtons de la répartition
# des appartements selon le type de location
# la création d'un objet n'empêche pas l'affichage
bplot <- barplot(prop.table(table(flats$room_type))*100,
                 main="% des appartements selon le type de bien loué",
                 sub="repères violets : pour les maisons")
# on ajoute les repères pour les maisons
points(bplot,
       prop.table(table(houses$room_type))*100,
       pch = "_",
       cex = 3,
       col = "purple")

par(old_par) # restauration