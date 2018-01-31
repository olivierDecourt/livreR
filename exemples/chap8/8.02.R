old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mai=c(0.8,0.8,0.2,0.2)) # marges
# nuage de points avec personnalisation
plot(price~beds, houses, pch=10, cex=1.2, col="red")

par(old_par) # restauration
