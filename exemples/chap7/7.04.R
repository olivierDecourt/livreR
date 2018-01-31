# y a-t-il des valeurs manquantes dans les prix ?
anyNA(houses$price)
# [1] FALSE

# confirmation en comptant les prix manquants
sum(is.na(houses$price))
# [1] 0

# même question avec les évaluations
anyNA(houses$review_scores_rating)
# [1] TRUE

# combien de maisons n'ont pas d'évaluations ?
sum(is.na(houses$review_scores_rating))
# [1] 235

# combien ont une valeur NaN ?
sum(is.nan(houses$review_scores_rating))
# [1] 0

# combien ont une valeur finie ?
sum(is.finite(houses$review_scores_rating))
# [1] 404

# et combien n'en ont pas ?
sum(! is.finite(houses$review_scores_rating))
# [1] 235