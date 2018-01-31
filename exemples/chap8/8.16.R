old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mar=c(3,4,1,1)) # marges
par(cex.axis=0.75) # taille des graduations d'axes
# boîte à moustaches du prix selon le type de maison
boxplot(price ~ gsub(" ","\n",room_type),
        houses,
        horizontal=TRUE)

par(old_par) # restauration