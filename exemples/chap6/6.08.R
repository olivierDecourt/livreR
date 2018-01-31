library(data.table) # gestion des données optimisée

# définition d'un index et tri du data.table calendar
setkey(calendar, listing_id)

# harmonisation des noms d'identifiants sur une copie
# du data.table houses, et définition d'un index
maisons <- houses
maisons$listing_id <- maisons$id
setkey(maisons, listing_id)

# liste des maisons ayant une entrée le 31/12/2016
# dans le data.table calendar
libres_le_31dec2016_dt <- maisons[
  subset(calendar,
         date=="2016-12-31"),
  nomatch=0]

# résultat identique à celui de l'exemple 6.07

# même requête sans besoin de changer le nom de listing_id
libres_le_31dec2016_dt <- houses[
  subset(calendar,
         date=="2016-12-31"),
  nomatch=0,
  on=c(id="listing_id")]