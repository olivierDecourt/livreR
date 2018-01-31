library(ggplot2) # fonctions graphiques
library(data.table) # gestion des données optimisée

# jointure entre calendrier et caractéristiques des appartements
# (premier million de lignes de calendar pour limiter les besoins en mémoire)
calendar2 <- merge(calendar[1:1000000,],
                   flats[,.(id,room_type)],
                   by.x="listing_id",
                   by.y="id")
# médiane du prix par date et type de location
evol_prix <- aggregate(price~date+room_type,
                       calendar2,
                       FUN=median)
# évolution du prix médian par date
# selon le type de location, avec lissage
ggplot(evol_prix)+
  aes(x=as.Date(date), y=price)+
  geom_path()+
  geom_smooth(method="loess", se=FALSE, colour="red") +
  labs(x=NULL, y="Prix de location médian") +
  facet_wrap(~room_type, # 1 graphique par type de location
             ncol=1, scales="free_y")
