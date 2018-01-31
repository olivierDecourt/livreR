library(tibble) # affichage des données
library(data.table) # gestion des données optimisée

# données triées par date puis par prix décroissant
# setorder produit un data.table, as_tibble va l'afficher
as_tibble(setorder(calendar,date,-price))
# A tibble: 9,461,700 × 3
#    listing_id       date  price
#         <int>      <chr>  <dbl>
# 1    12851646 2016-07-03 110000
# 2    13413708 2016-07-03  88500
# 3     6042209 2016-07-03   3680
# 4     5814840 2016-07-03   3000
# 5     4999668 2016-07-03   2500
# 6     4995637 2016-07-03   2500
# 7     5814961 2016-07-03   2200
# 8     5198923 2016-07-03   2000
# 9     8171127 2016-07-03   2000
# 10   13042455 2016-07-03   1700
# ... with 9,461,690 more rows
