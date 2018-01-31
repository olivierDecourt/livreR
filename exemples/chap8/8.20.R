old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mar=c(2.5,3.5,3,1)) # marges
# diagramme en bâtons des appartements selon
# le type de location
barplot(table(gsub(" ","\n",flats$room_type)),
        main = "Répartition des appartements\n selon le type de bien loué",
        sub = "Source : AirBnB")
# lignes de référence
grid(ny=NULL, nx=0)

par(old_par) # restauration