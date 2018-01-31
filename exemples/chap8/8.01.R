old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mai=c(0.8,0.8,0.2,0.2)) # marges
plot(price~beds,houses) # nuage de points

par(old_par) # restauration
