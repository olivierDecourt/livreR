library(reshape2) # transposition

# transposition : 1 ligne par logement, 1 colonne par date (pour que l'opération
# ne soit pas trop lente on se limite à 1 million de lignes)
# la mention d'une moyenne est factice car il n'y a qu'un
# prix par date et par logement
evol_prix <- dcast(calendar[1:1000000,],
                   listing_id ~ date,
                   fun = mean,
                   value.var = "price")
# calcul d'une moyenne par ligne (donc par logement)
prix_par_logement <- data.frame(id=evol_prix$listing_id,
                                moy=rowMeans(evol_prix[,-1],
                                             na.rm = TRUE))
# aperçu du résultat avec les 6 premières lignes
head(prix_par_logement)
#      id       moy
# 1  9279  55.00000
# 2 11170  70.61056
# 3 11798 101.07735
# 4 11848  87.00000
# 5 14011  89.00000
# 6 17372  54.00000