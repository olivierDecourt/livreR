library(dplyr) # gestion simplifiée des données

# maisons louées plus de 1000 euros/nuit
houses %>% filter(price > 1000) %>%
  select(id,price,zipcode)
#         id price zipcode
# 1  6041405  1253   75009
# 2  5859850  2154   75015
# 3  2234570  1002   75006
# 4  9063834  1102   75016
# 5  6042209  2765   75116
# 6  9459633  1002   75116
# 7  5216981  1002   75014
# 8  9105310  2004   75014
# 9   571017  1213   75014
# 10 5879293  1213   75014
# 11 9028169  3608   75004

# maisons du 14e arrondissement de Paris 
# louées plus de 1000 euros/nuit
houses %>% filter(price > 1000, 
                  zipcode == "75014") %>%
  select(id,price,zipcode)
#        id price zipcode
# 1 5216981  1002   75014
# 2 9105310  2004   75014
# 3  571017  1213   75014
# 4 5879293  1213   75014

# maisons louées plus de 800 euros/nuit et dont la 
# politique d'annulation est flexible ou modérée
houses %>% filter(price > 800,
                  cancellation_policy %in%
                    c("moderate","flexible")) %>%
  select(-amenities,-listing_url,-host_id,
         -host_name,-host_since,
         -host_location,-number_of_reviews,
         -review_scores_rating)
#        id last_scraped neighbourhood neighbourhood_cleansed
# 1 9459633   2016-07-03         Passy                  Passy
# 2 9269657   2016-07-04    République             Popincourt
#   zipcode property_type       room_type accommodates
# 1   75116         House Entire home/apt            6
# 2   75011         House Entire home/apt            1
#   bathrooms bedrooms beds price cancellation_policy
# 1         4        4    4  1002            flexible
# 2         1        0    1   901            flexible

# statistiques sur les réservations avant le 31/10/2016
# ... opération lente à cause de la conversion en Date ...
summary(calendar %>% filter(as.Date(calendar$date) <= "2016-10-31"))
#   listing_id           date               price       
# Min.   :    2623   Length:2885072     Min.   :     1  
# 1st Qu.: 2829598   Class :character   1st Qu.:    60  
# Median : 6445479   Mode  :character   Median :    80  
# Mean   : 6769457                      Mean   :   119  
# 3rd Qu.:10679589                      3rd Qu.:   120  
# Max.   :13819274                      Max.   :110000
