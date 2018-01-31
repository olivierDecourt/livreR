# liste des maisons ayant une entrée le 31/12/2016
# dans le data.table calendar
libres_le_31dec2016 <- merge(houses,
                             subset(calendar,
                                    date=="2016-12-31"),
                             by.x="id",
                             by.y="listing_id",
                             suffixes=c("_avg",
                                        "_31dec2016"))

# prix moyen associé à la maison (venant de houses)
mean(libres_le_31dec2016$price_avg)
# [1] 210.8164

# prix moyen demandé pour les maisons libres le 31/12/2016
# (moyenne des prix venant de calendar)
mean(libres_le_31dec2016$price_31dec2016)
# [1] 224.5213
