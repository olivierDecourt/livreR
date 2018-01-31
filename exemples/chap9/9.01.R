setwd("C:/olivier/dunod/r") # répertoire courant

# sauvegarde des objets flats et houses
save(flats, houses, file="logements.Rdata")

# sauvegarde de l'objet calendar
saveRDS(calendar, file="calendrier.RDS")
