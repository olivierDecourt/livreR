# exemple nécessitant d'avoir une base MySQL installée sur le PC
library(RMySQL) # connexion à une base MySQL
library(tibble) # affichage des données

# établissement de la connexion à la base de données
tuyau <- dbConnect(MySQL(),
                   dbname="airbnb",
                   username="olivier",
                   password="livreR")
# envoi d'une requête et récupération du résultat
cal50 <- dbGetQuery(tuyau,
                    "select * from calendar 
                    where price < 50")
as_tibble(cal50) # affichage
# A tibble: 1,088 × 3
#    listing_id       date price
# *       <int>     <date> <dbl>
# 1     6159911 2016-08-20    40
# 2     6159911 2016-08-19    40
# 3     6159911 2016-08-18    40
# 4     6159911 2016-08-17    40
# 5     6159911 2016-08-16    40
# 6     6159911 2016-08-15    40
# 7     6159911 2016-08-14    40
# 8     6159911 2016-08-13    40
# 9     6159911 2016-07-23    40
# 10    6159911 2016-07-22    40
# ... with 1,078 more rows

dbDisconnect(tuyau)
rm(tuyau)
