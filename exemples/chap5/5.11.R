library(lubridate) # manipulation de dates
library(data.table) # gestion des données optimisée

# copie du data.table calendar
cal <- calendar
# ajout de variables pour l'année, le mois, le jour
# et le numéro de semaine (opération un peu longue)
cal[,
         c("aaaa",
           "mm",
           "jj",
           "ww") :=
           .(year(ymd(date)),
             month(ymd(date)),
             day(ymd(date)),
             isoweek(ymd(date)))]

# maintenant les filtres sont rapides...
# filtre sur l'année 2017
nrow(cal[aaaa == 2017,])
# [1] 5021346

# filtre sur la semaine 52
nrow(cal[ww == 52,])
# [1] 181557
