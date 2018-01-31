library(tibble) # affichage des données

# maisons louées plus de 1000 euros/nuit
subset(houses,
       price > 1000,
       c(id,price,review_scores_rating))
#          id price review_scores_rating
#  1: 6041405  1253                   NA
#  2: 5859850  2154                   NA
#  3: 2234570  1002                   NA
#  4: 9063834  1102                   NA
#  5: 6042209  2765                   NA
#  6: 9459633  1002                   NA
#  7: 5216981  1002                   NA
#  8: 9105310  2004                   NA
#  9:  571017  1213                   96
# 10: 5879293  1213                  100
# 11: 9028169  3608                   NA

# maisons louées plus de 1000 euros/nuit
# et dont la note de satisfaction est renseignée
subset(houses,
       price > 1000 & ! is.na(review_scores_rating),
       c(id,price,review_scores_rating))
#         id price review_scores_rating
# 1:  571017  1213                   96
# 2: 5879293  1213                  100

# maisons louées plus de 500 euros/nuit
# dont les conditions d'annulation sont
# flexibles ou modérées
as_tibble(subset(houses,
                 cancellation_policy %in%
                   c("moderate","flexible") &
                   price > 500,
                 -c(amenities,listing_url,host_id,host_name,
                    host_since,host_location,
                    number_of_reviews,review_scores_rating)))
# A tibble: 9 × 13
#         id last_scraped                neighbourhood
#      <int>        <chr>                        <chr>
# 1 10373349   2016-07-03 Buttes-Chaumont - Belleville
# 2  7909525   2016-07-03          Porte de Versailles
# 3  6198977   2016-07-03                             
# 4 13204472   2016-07-04           Commerce - Dupleix
# 5  7429205   2016-07-04          Porte de Versailles
# 6  9459633   2016-07-03                        Passy
# 7  9269657   2016-07-04                   République
# 8  4880464   2016-07-03        Porte de Clignancourt
# 9  5314923   2016-07-04                   Montmartre
# ... with 10 more variables: neighbourhood_cleansed <chr>,
#   zipcode <chr>, property_type <chr>, room_type <chr>,
#   accommodates <int>, bathrooms <dbl>, bedrooms <int>,
#   beds <int>, price <dbl>, cancellation_policy <chr>

# statistiques sur les réservations avant le 31/10/2016
# ... opération lente à cause de la conversion en Date ...
summary(subset(calendar,
               as.Date(calendar$date) <= "2016-10-31"))
#   listing_id           date               price       
# Min.   :    2623   Length:2885072     Min.   :     1  
# 1st Qu.: 2829598   Class :character   1st Qu.:    60  
# Median : 6445479   Mode  :character   Median :    80  
# Mean   : 6769457                      Mean   :   119  
# 3rd Qu.:10679589                      3rd Qu.:   120  
# Max.   :13819274                      Max.   :110000
