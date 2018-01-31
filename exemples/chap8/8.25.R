old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mar=c(4,4,1.5,0.5)) # marges
# diagramme en bâtons sans axes
barplot(table(flats$property_type),
        xlab="Type de bien\n",
        axes=FALSE)
# axe vertical : graduations principales
axis(side = 2,
     at = 0:5*10000,
     labels = format(0:5*10000, big.mark = " "),
     xpd = TRUE)
# axe vertical, graduations secondaires
axis(side = 2,
     at = 0:50*1000,
     labels = rep(" ",51),
     tck = -0.01,
     xpd = TRUE)

par(old_par) # restauration