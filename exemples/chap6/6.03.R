library(data.table) # gestion des données optimisée

# copie du data.table houses
maisons <- houses

# 6 premières valeurs du vecteur des prix à la nuitée
head(maisons$price)
# [1] 191  99  30 200 280  75

# sans tri physique, on obtient le même résultat
setkey(maisons, price, physical = FALSE)
head(maisons$price)
# [1] 191  99  30 200 280  75

# avec le tri par défaut (physique), on obtient
# les 6 plus petits prix
setkey(maisons, price)
head(maisons$price)
# [1] 20 21 22 24 24 24
