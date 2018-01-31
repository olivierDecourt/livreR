library(tibble) # affichage des données
library(data.table) # gestion des données optimisée

# sauvegarde 
defaut <- getOption("max.print")

# affichage de 10 éléments maximum
options(max.print=10)
# affichage d'un data.table
# (seulement 5+5 lignes par défaut)
print(calendar)
# listing_id       date price
# 1:    6159911 2016-10-01    50
# 2:    6159911 2016-09-30    50
# 3:    6159911 2016-09-29    50
# [ reached getOption("max.print") -- omitted 8 rows ]

# affichage d'un data.frame
# (affichage intégral par défaut)
print.data.frame(calendar)
# ... l'exécution est très lente ...
# listing_id       date price
# 1          6159911 2016-10-01    50
# 2          6159911 2016-09-30    50
# 3          6159911 2016-09-29    50
# [ reached getOption("max.print") -- omitted 9461697 rows ]

# retour au comportement par défaut
options(max.print=defaut)
# affichage d'un data.table
# (seulement 5+5 lignes par défaut)
print(calendar)
#          listing_id       date price
#       1:    6159911 2016-10-01    50
#       2:    6159911 2016-09-30    50
#       3:    6159911 2016-09-29    50
#       4:    6159911 2016-09-28    50
#       5:    6159911 2016-09-27    50
#      ---                            
# 9461696:    8563549 2017-05-22    50
# 9461697:    8563549 2016-09-13    50
# 9461698:    8563549 2016-09-12    50
# 9461699:    8563549 2016-09-11    50
# 9461700:    8563549 2016-09-10    50

# affichage d'un tibble
# (seulement 10 lignes par défaut)
as_tibble(calendar)
# A tibble: 9,461,700 x 3
#    listing_id       date price
#         <int>      <chr> <dbl>
#  1    6159911 2016-10-01    50
#  2    6159911 2016-09-30    50
#  3    6159911 2016-09-29    50
#  4    6159911 2016-09-28    50
#  5    6159911 2016-09-27    50
#  6    6159911 2016-09-26    50
#  7    6159911 2016-09-25    50
#  8    6159911 2016-09-24    50
#  9    6159911 2016-09-23    50
# 10    6159911 2016-09-22    50
# ... with 9,461,690 more rows

# affichage d'un tibble
# (seulement 10 lignes par défaut et pas toutes 
# les colonnes en fonction de la largeur de la Console
as_tibble(houses)
# A tibble: 639 x 21
#          id                           listing_url
#       <int>                                 <chr>
#  1  5589471  https://www.airbnb.com/rooms/5589471
#  2  3018762  https://www.airbnb.com/rooms/3018762
#  3 12862174 https://www.airbnb.com/rooms/12862174
#  4  6198459  https://www.airbnb.com/rooms/6198459
#  5  2605719  https://www.airbnb.com/rooms/2605719
#  6   917659   https://www.airbnb.com/rooms/917659
#  7  2375969  https://www.airbnb.com/rooms/2375969
#  8 13146717 https://www.airbnb.com/rooms/13146717
#  9  2680392  https://www.airbnb.com/rooms/2680392
# 10  4838079  https://www.airbnb.com/rooms/4838079
# ... with 629 more rows, and 19 more variables:
#   last_scraped <chr>, host_id <int>, host_name <chr>,
#   host_since <chr>, host_location <chr>,
#   neighbourhood <chr>, neighbourhood_cleansed <chr>,
#   zipcode <chr>, property_type <chr>, room_type <chr>,
#   accommodates <int>, bathrooms <dbl>, bedrooms <int>,
#   beds <int>, price <dbl>, number_of_reviews <int>,
#   review_scores_rating <int>, cancellation_policy <chr>,
#   amenities <chr>
