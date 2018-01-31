library(reshape2) # transposition
library(lubridate) # gestion des dates
library(tibble) # affichage des données

# copie du data.table calendar
cal <- calendar

# création de colonnes mois et année à partir de la date
cal$annee <- year(ymd(cal$date))
cal$mois  <- paste("m",month(ymd(cal$date)), sep="")

# transposition : 1 ligne par logement et année, 1 colonne
# par mois, peuplées de la moyenne des prix à la nuit
# et de NaN quand le logement n'est pas disponible
evol <- dcast(subset(cal,
                     annee == "2017"),
              listing_id+annee ~ mois,
              fun = mean,
              value.var = "price")
# affichage
as_tibble(evol)
# A tibble: 29,556 × 9
#    listing_id annee        m1    m2    m3    m4    m5    m6
#         <int> <dbl>     <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
# 1        2623  2017  75.00000    75    75    75    75    75
# 2        3109  2017  85.00000    85    85    85    85    85
# 3        4886  2017  95.66667   NaN   NaN   NaN   NaN   NaN
# 4        5317  2017 200.00000   200   200   200   200   200
# 5        5396  2017 105.00000   105   105   105   105   105
# 6        6602  2017  80.00000    80    80    80    80    80
# 7        7397  2017 114.00000   114   114   114   114   114
# 8        8291  2017 151.00000   151   151   151   151   151
# 9        9279  2017  55.00000    55    55    55    55    55
# 10       9342  2017 342.66667   340   340   340   340   340
# ... with 29,546 more rows, and 1 more variables: m7 <dbl>
