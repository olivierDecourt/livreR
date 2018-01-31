old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(cex=0.7) # taille des polices
par(mar=c(5,7,5,1)) # marges
# diagramme en bâtons par type de location
barplot(table(flats$room_type),
        horiz = TRUE,
        main = "Répartition des appartements parisiens\n selon le type de bien loué",
        sub = "Source : AirBnB")

par(old_par) # restauration