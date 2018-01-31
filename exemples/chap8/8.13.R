# prix médian par arrondissement
prix_arr <- aggregate(price~zipcode,
                      subset(flats,
                             grepl("^750\\d{2}$",
                                   zipcode)),
                      FUN=median, 
                      na.rm=TRUE)
# tri par médiane décroissante
prix_arr <- prix_arr[order(prix_arr$price),]
# mise en facteur du code postal arrondissement
prix_arr$zipcode <- factor(prix_arr$zipcode)

# repérer le 14e arrondissement par une couleur spécifique
couleurs <- rep("gray70",nlevels(prix_arr$zipcode))
couleurs[which(prix_arr$zipcode=="75014")] <- "black"

old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mar=c(3.5,3.5,1,1)) # marges
# dot plot des prix médians par arrondissement
dotchart(prix_arr$price,
         labels=prix_arr$zipcode,
         col=couleurs,
         pch=18,
         cex=0.7,
         pt.cex=2)

par(old_par) # restauration
