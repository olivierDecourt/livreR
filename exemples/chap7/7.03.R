# les notes contiennent des valeurs manquantes
# --> résultat par défaut = NA
mean(houses$review_scores_rating)
# NA

# moyenne des notes hors données manquantes
mean(houses$review_scores_rating,
     na.rm = TRUE)
# 91.92822
