library(lubridate) # manipulation de dates
library(data.table) # gestion des données optimisée

# copie du data.table calendar
cal <- calendar
# on crée une vraie variable Date dans cal
cal[,dt := ymd(date)]
# filtre sur le 1er trimestre 2017
# très rapide contrairement aux solutions du chapitre 4
# avec un as.Date dans la condition
nrow(cal[dt %in%
                seq(ymd("2017-01-01"),
                    ymd("2017-03-31"),
                    by = "day"),])
# [1] 2418995