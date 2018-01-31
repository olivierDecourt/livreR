old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(cex.axis=0.8) # taille des graduations d'axes
par(mar=c(2,3,1,1)) # marges
# boîte à moustache du prix selon le type de location
boxplot(price~as.factor(room_type),
        houses)
# ajout des prix moyens sur le graphique précédent
points(aggregate(price~as.factor(room_type),
                 houses,
                 FUN=mean,
                 na.rm=TRUE),
       pch=19, col="red")

par(old_par) # restauration