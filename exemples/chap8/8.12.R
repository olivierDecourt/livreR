library(RColorBrewer) # palettes de couleurs

old_par <- par(no.readonly = TRUE) # sauvegarde

par(mai=c(0.1,0.1,0.1,0.1)) # marges

freq <- table(flats$room_type) # effectifs
# diagramme circulaire montrant la répartition des
# appartements par type de location
pie(freq,
    labels=paste(names(freq), # libellés améliorés
                 "\n",
                 round(prop.table(freq)*100,1),
                 "%"),
    radius=0.5,
    cex=0.7,
    col=brewer.pal(length(freq), # palette de RColorBrewer
                   "Oranges"))

par(old_par) # restauration