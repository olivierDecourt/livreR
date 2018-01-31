library(dplyr) # gestion simplifiée des données

# liste des maisons ayant une entrée le 31/12/2016
# dans le data.table calendar
libres_le_31dec2016_dplyr <-  inner_join(select(houses,id,price) 
                                         %>% rename(listing_id=id),
                                         filter(calendar, 
                                                date == "2016-12-31"),
                                         by="listing_id")

# même requête sans changer le nom des variables
libres_le_31dec2016_dplyr <-  inner_join(
  as.data.frame(select(houses,id,price)),
  as.data.frame(filter(calendar, 
                       date == "2016-12-31")),
  by=c("id"="listing_id"))

# liste des maisons n'ayant pas d'entrée le 31/12/2016
# dans le data.table calendar
indisponibles_le_31dec2016_dplyr <-  anti_join(select(houses,id,price) 
                                               %>% rename(listing_id=id),
                                               filter(calendar, 
                                                      date == "2016-12-31"),
                                               by="listing_id")