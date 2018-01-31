old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mar=c(2,2,0,0)+0.7) # marges
# barres empilées 100% montrant la répartition 
# des maisons selon le type de bien et le nombre de lits
barplot(prop.table(table(houses$room_type, houses$beds),
                   2)*100,
        cex.names = 0.8,
        legend=TRUE)

par(old_par) # restauration
