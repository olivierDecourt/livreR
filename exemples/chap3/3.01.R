library(tibble) # visualisation des données

# import du fichier houses.csv depuis Internet
houses <- read.delim(url("http://www.od-datamining.com/livreR/houses.csv"),
                     sep = ",",
                     stringsAsFactors = FALSE)
as_tibble(houses) # affichage
# A tibble: 430 × 21
#          id                           listing_url
#       <int>                                 <chr>
# 1   5589471  https://www.airbnb.com/rooms/5589471
# 2  12862174 https://www.airbnb.com/rooms/12862174
# 3   6198459  https://www.airbnb.com/rooms/6198459
# 4   2605719  https://www.airbnb.com/rooms/2605719
# 5   2375969  https://www.airbnb.com/rooms/2375969
# 6  13146717 https://www.airbnb.com/rooms/13146717
# 7   4838079  https://www.airbnb.com/rooms/4838079
# 8  12909046 https://www.airbnb.com/rooms/12909046
# 9   7283168  https://www.airbnb.com/rooms/7283168
# 10  1962776  https://www.airbnb.com/rooms/1962776
# ... with 420 more rows, and 19 more variables:
#   last_scraped <chr>, host_id <int>, host_name <chr>,
#   host_since <chr>, host_location <chr>,
#   neighbourhood <chr>, neighbourhood_cleansed <chr>,
#   zipcode <int>, property_type <chr>, room_type <chr>,
#   accommodates <int>, bathrooms <dbl>, bedrooms <int>,
#   beds <int>, price <int>, number_of_reviews <int>,
#   review_scores_rating <int>, cancellation_policy <chr>,
#   amenities <chr>

# si le fichier avait été sur le disque dur on aurait écrit
# setwd("C:/olivier/dunod/r")
# houses <- read.delim("houses.csv"),
#                      sep = ",",
#                      stringsAsFactors = FALSE)

# import du fichier flats.csv depuis Internet
# même structure que houses --> on récupère les types
# avec sapply(houses, class) ==> vecteur des types
flats <- read.delim(url("http://www.od-datamining.com/livreR/flats.csv"),
                    sep = ",",
                    stringsAsFactors = FALSE,
                    colClasses = sapply(houses, class))
as_tibble(flats) # affichage
# A tibble: 35,142 × 21
#          id                           listing_url
#       <int>                                 <chr>
# 1   4867396  https://www.airbnb.com/rooms/4867396
# 2   7704653  https://www.airbnb.com/rooms/7704653
# 3   2725029  https://www.airbnb.com/rooms/2725029
# 4   9337509  https://www.airbnb.com/rooms/9337509
# 5  12928158 https://www.airbnb.com/rooms/12928158
# 6   2728649  https://www.airbnb.com/rooms/2728649
# 7    793550   https://www.airbnb.com/rooms/793550
# 8   9337880  https://www.airbnb.com/rooms/9337880
# 9   6833868  https://www.airbnb.com/rooms/6833868
# 10   240434   https://www.airbnb.com/rooms/240434
# ... with 35,132 more rows, and 19 more variables:
#   last_scraped <chr>, host_id <int>, host_name <chr>,
#   host_since <chr>, host_location <chr>,
#   neighbourhood <chr>, neighbourhood_cleansed <chr>,
#   zipcode <int>, property_type <chr>, room_type <chr>,
#   accommodates <int>, bathrooms <dbl>, bedrooms <int>,
#   beds <int>, price <int>, number_of_reviews <int>,
#   review_scores_rating <int>, cancellation_policy <chr>,
#   amenities <chr>

# import du fichier calendar.csv depuis Internet
# on donne explicitement les types des colonnes
calendar <- read.delim(url("http://www.od-datamining.com/livreR/calendar.csv"),
                       sep = ",",
                       colClasses = c("integer",
                                      "Date",
                                      "numeric"),
                       stringsAsFactors = FALSE)
as_tibble(calendar) # affichage
# A tibble: 9,461,230 × 3
#    listing_id       date price
#         <int>     <date> <dbl>
# 1     6159911 2016-10-01    50
# 2     6159911 2016-09-30    50
# 3     6159911 2016-09-29    50
# 4     6159911 2016-09-28    50
# 5     6159911 2016-09-27    50
# 6     6159911 2016-09-26    50
# 7     6159911 2016-09-25    50
# 8     6159911 2016-09-24    50
# 9     6159911 2016-09-23    50
# 10    6159911 2016-09-22    50
# ... with 9,461,220 more rows
