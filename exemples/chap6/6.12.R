library(reshape2) # transposition
library(tidyr) # autres fonctions de transposition
library(dplyr) # gestion simplifiée des données

# éclatement de la colonne amenities en plusieurs
# séparateur : pipe |, à noter \\| ici (expression régulière)
# création de variables am1 à am50 (plus que nécessaire)
houses2 <- separate(houses,
                    col=amenities,
                    into=paste0("am",1:50),
                    sep="\\|")
# transposition : une ligne par équipement
houses_eq <- melt(houses2,
                  id="id",
                  measure=paste0("am",1:50),
                  value.name = "equipement")
# on ne conserve que quelques équipements pour l'exemple
houses_eq <- filter(houses_eq,
                    equipement %in%
                      c("TV", "Internet",
                        "Iron", "Dryer","Washer"))
# transposition : une ligne par équipement et un comptage
# du nombre de maisons équipées (les équipements sont par
# ordre alphabétique)
dcast(houses_eq,
      equipement~.,
      fun=length)
#   equipement   .
# 1      Dryer 280
# 2   Internet 466
# 3       Iron 278
# 4         TV 397
# 5     Washer 514