old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mar=c(4,4,2,1)) # marges
par(mfrow=c(1,3)) # découpage de l'image en 3 zones
hist(houses$price) # histogramme des prix
hist(houses$price, breaks=20) # en environ 20 barres
hist(houses$price, labels=TRUE)  # avec effectifs
par(mfrow=c(1,1)) # retour à la zone unique

par(old_par) # restauration