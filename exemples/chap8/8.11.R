old_par <- par(no.readonly = TRUE) # sauvegarde

par(mai=c(0.1,0.1,0.1,0.1)) # marges
# diagramme circulaire montrant la répartition des
# appartements par type de location
pie(table(flats$room_type),
    radius=0.6,
    cex=0.7)

par(old_par) # restauration
