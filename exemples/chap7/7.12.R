# comptage du nombre d'évaluations non manquantes
# par type de logement
aggregate(review_scores_rating ~ room_type,
          flats, 
          function(x){sum(! is.na(x))},
          na.action = NULL)
#         room_type review_scores_rating
# 1 Entire home/apt                31781
# 2    Private room                 4350
# 3     Shared room                  347
