library(data.table) # gestion des données optimisée

# 2 premières lignes de calendar
calendar[1:2,]
# listing_id       date price
# 1:    6159911 2016-10-01    50
# 2:    6159911 2016-09-30    50

# 3 colonnes de houses (data.table)
houses[,.(room_type,bathrooms,beds)]
#            room_type bathrooms beds
#   1: Entire home/apt       3.0    4
#   2: Entire home/apt       1.0    1
#   3: Entire home/apt       1.0    1
#   4: Entire home/apt       1.0    5
#   5: Entire home/apt       1.0    5
#  ---                               
# 635: Entire home/apt       1.0    2
# 636:    Private room       1.0    1
# 637:    Private room       1.5    1
# 638:     Shared room       2.0    4
# 639: Entire home/apt       1.0    2

# idem via un vecteur de noms ==> option with=FALSE
liste.colonnes <- c("room_type",
                    "bathrooms",
                    "beds")
houses[,liste.colonnes, with=FALSE]
#            room_type bathrooms beds
#   1: Entire home/apt       3.0    4
#   2: Entire home/apt       1.0    1
#   3: Entire home/apt       1.0    1
#   4: Entire home/apt       1.0    5
#   5: Entire home/apt       1.0    5
#  ---                               
# 635: Entire home/apt       1.0    2
# 636:    Private room       1.0    1
# 637:    Private room       1.5    1
# 638:     Shared room       2.0    4
# 639: Entire home/apt       1.0    2

# idem, le vecteur de noms dans les [...]
houses[,c("room_type","price"), with=FALSE]
#            room_type price
#   1: Entire home/apt   191
#   2: Entire home/apt    99
#   3: Entire home/apt    30
#   4: Entire home/apt   200
#   5: Entire home/apt   280
#  ---                      
# 635: Entire home/apt    65
# 636:    Private room    33
# 637:    Private room    55
# 638:     Shared room    35
# 639: Entire home/apt    56

# idem avec un vecteur de numéros de colonnes
houses[,1:3,with=FALSE]
#            id                           listing_url last_scraped
#   1:  5589471  https://www.airbnb.com/rooms/5589471   2016-07-04
#   2:  3018762  https://www.airbnb.com/rooms/3018762   2016-07-03
#   3: 12862174 https://www.airbnb.com/rooms/12862174   2016-07-04
#   4:  6198459  https://www.airbnb.com/rooms/6198459   2016-07-03
#   5:  2605719  https://www.airbnb.com/rooms/2605719   2016-07-04
#  ---                                                            
# 635: 13374174 https://www.airbnb.com/rooms/13374174   2016-07-03
# 636: 13687659 https://www.airbnb.com/rooms/13687659   2016-07-04
# 637: 13809485 https://www.airbnb.com/rooms/13809485   2016-07-03
# 638: 13718542 https://www.airbnb.com/rooms/13718542   2016-07-04
# 639:  7913423  https://www.airbnb.com/rooms/7913423   2016-07-03

# idem en combinant des vecteurs
houses[,c("price",liste.colonnes),with=FALSE]
#      price       room_type bathrooms beds
#   1:   191 Entire home/apt       3.0    4
#   2:    99 Entire home/apt       1.0    1
#   3:    30 Entire home/apt       1.0    1
#   4:   200 Entire home/apt       1.0    5
#   5:   280 Entire home/apt       1.0    5
#  ---                                     
# 635:    65 Entire home/apt       1.0    2
# 636:    33    Private room       1.0    1
# 637:    55    Private room       1.5    1
# 638:    35     Shared room       2.0    4
# 639:    56 Entire home/apt       1.0    2