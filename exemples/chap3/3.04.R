library(haven) # import de fichiers statistiques

# import du fichier lis.sas7bdat depuis Internet
listing <- read_sas("http://www.od-datamining.com/livreR/lis.sas7bdat")
listing # affichage
# A tibble: 35,979 × 21
#          id                           listing_url
#       <chr>                                 <chr>
# 1   4867396  https://www.airbnb.com/rooms/4867396
# 2   7704653  https://www.airbnb.com/rooms/7704653
# 3   2725029  https://www.airbnb.com/rooms/2725029
# 4   9337509  https://www.airbnb.com/rooms/9337509
# 5  12928158 https://www.airbnb.com/rooms/12928158
# 6   5589471  https://www.airbnb.com/rooms/5589471
# 7   2728649  https://www.airbnb.com/rooms/2728649
# 8    793550   https://www.airbnb.com/rooms/793550
# 9   9337880  https://www.airbnb.com/rooms/9337880
# 10  6833868  https://www.airbnb.com/rooms/6833868
# ... with 35,969 more rows, and 19 more variables:
#   last_scraped <chr>, host_id <dbl>, host_name <chr>,
#   host_since <chr>, host_location <chr>,
#   neighbourhood <chr>, neighbourhood_cleansed <chr>,
#   zipcode <dbl>, property_type <chr>, room_type <chr>,
#   accommodates <dbl>, bathrooms <dbl>, bedrooms <dbl>,
#   beds <chr>, price <dbl>, number_of_reviews <dbl>,
#   review_scores_rating <dbl>, cancellation_policy <chr>,
#   amenities <chr>
