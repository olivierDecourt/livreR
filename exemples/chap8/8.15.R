old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mar=c(1,4,1,1)) # marges
# boîte à moustaches du prix
boxplot(houses$price, 
        range = 0,
        col = "gray")

par(old_par) # restauration