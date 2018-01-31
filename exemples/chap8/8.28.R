library(ggplot2) # fonctions graphiques
library(data.table) # gestion des données optimisée

# jointure entre calendrier et caractéristiques des appartements
calendar2 <- merge(calendar,
                   flats[,.(id,room_type)],
                   by.x="listing_id",
                   by.y="id")
# médiane du prix par date et type de location
evol_prix <- aggregate(price~date+room_type,
                       calendar2,
                       FUN=median)
# évolution du prix médian par date (année 2016)
# selon le type de location, avec lissage
ggplot(subset(evol_prix,substr(date,1,4)==2016))+
  aes(x=as.Date(date), y=price, linetype=room_type)+
  geom_path()+ # courbe simple
  geom_smooth(method="loess",  # lissage
              se=FALSE, colour="red")
