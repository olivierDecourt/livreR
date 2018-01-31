# moyenne des prix
mean(houses$price)
# 175.9937

# médiane des prix
median(houses$price)
# 100

# nombre d'éléments du vecteur des prix
length(houses$price)
# 639

# écart-type des prix
sd(houses$price)
# 266.1557

# moyennes des nombres de lits, de chambres et des prix
sapply(houses[,c("beds","bedrooms","price")], FUN = mean)
#     beds   bedrooms      price 
# 2.682316   2.031299 175.993740
