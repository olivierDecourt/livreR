library(reshape2) # transposition

# transposition : 1 ligne par logement, 1 colonne par date (pour que l'opération
# ne soit pas trop lente on se limite à 1 million de lignes)
# la mention d'une moyenne est factice car il n'y a qu'un
# prix par date et par logement
evol_prix <- dcast(calendar[1:1000000,],
                   listing_id ~ date,
                   fun = mean,
                   value.var = "price")
# moyenne des prix par jour (on élimine l'identifiant avec [,-1])
prix_moy_jour <- as.data.frame(colMeans(evol_prix[,-1], 
                                        na.rm=TRUE))
# aperçu du résultat avec les 6 premières lignes
head(prix_moy_jour)
#            colMeans(evol_prix[, -1], na.rm = TRUE)
# 2016-07-03                                114.9821
# 2016-07-04                                115.6414
# 2016-07-05                                110.0062
# 2016-07-06                                111.2605
# 2016-07-07                                109.7910
# 2016-07-08                                110.8522
