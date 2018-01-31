# copie du data.table flats en data.frame
apparts <- as.data.frame(flats)

# pour chaque équipement de chaque logement,
# contient-il le mot "TV" ?
anyTV <- lapply(strsplit(apparts$amenities, split="|", 
                         fixed=TRUE),
                FUN = function(equipement){
                  return(grepl("TV",
                               toupper(equipement)))
                })
# le résultat est une liste de TRUE et FALSE
# on le résume en vecteur en cherchant au moins un TRUE
apparts$anyTV <- sapply(anyTV, FUN=any)
rm(anyTV) # devenu inutile, supprimé

summary(apparts$anyTV)
#    Mode   FALSE    TRUE    
# logical   15218   36276  

# on retrouve les résultats de l'exemple 5.27
