old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mar=c(2,2,0,0)+0.7) # marges
# barres empilées montrant la répartition des maisons
# selon le type de bien et le nombre de lits
barplot(table(houses$room_type, houses$beds),
        cex.names = 0.8, legend=TRUE)

par(old_par) # restauration
