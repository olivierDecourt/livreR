old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mar=c(4,4,0.5,0.5)) # marges
# diagramme en bâtons par type de logement
barplot(table(houses$property_type),
        xlab="Type de bien\n",
        ylab="Nombre de maisons à louer",
        ylim=c(0,600)) # extrémités de l'axe vertical

par(old_par) # restauration