library(httr) # récupération de fichiers Internet
library(readxl) # import de classeurs Excel
library(tibble) # affichage de données

# import du fichier other.xlsx depuis Internet
# téléchargement préalable
# fic est le nom du fichier temporaire
GET("http://www.od-datamining.com/livreR/other.xlsx", 
    write_disk(fic <- tempfile(fileext = ".xlsx")))

# on importe fic
other <- read_excel(fic, 
                    sheet=1)
# avec un fichier en local les choses sont plus simples :
# setwd("C:/olivier/dunod/r")
# other <- read_excel("other.xlsx", sheet=1)

# suppression du fichier temporaire
rm(fic)
other # affichage
# A tibble: 404 × 21
#          id                           listing_url
#       <dbl>                                 <chr>
# 1  12553104 https://www.airbnb.com/rooms/12553104
# 2   1903992  https://www.airbnb.com/rooms/1903992
# 3   9922466  https://www.airbnb.com/rooms/9922466
# 4   6000538  https://www.airbnb.com/rooms/6000538
# 5  13254569 https://www.airbnb.com/rooms/13254569
# 6  12994429 https://www.airbnb.com/rooms/12994429
# 7  13678400 https://www.airbnb.com/rooms/13678400
# 8  10257814 https://www.airbnb.com/rooms/10257814
# 9  10279486 https://www.airbnb.com/rooms/10279486
# 10   452481   https://www.airbnb.com/rooms/452481
# ... with 394 more rows, and 19 more variables:
#   last_scraped <chr>, host_id <dbl>,
#   host_name <chr>, host_since <chr>,
#   host_location <chr>, neighbourhood <chr>,
#   neighbourhood_cleansed <chr>, zipcode <dbl>,
#   property_type <chr>, room_type <chr>,
#   accommodates <dbl>, bathrooms <dbl>,
#   bedrooms <dbl>, beds <dbl>, price <dbl>,
#   number_of_reviews <dbl>,
#   review_scores_rating <dbl>,
#   cancellation_policy <chr>, amenities <chr>
