library(data.table) # gestion des données optimisée

head(order(-houses$price))
# [1] 613 427 224 487 120 489

# copie du data.table houses
maisons <- houses

# liste des maisons triées par prix décroissant
maisons[head(order(-maisons$price)),
        .(id,price,zipcode)]
#         id price zipcode
# 1: 9028169  3608   75004
# 2: 6042209  2765   75116
# 3: 5859850  2154   75015
# 4: 9105310  2004   75014
# 5: 6041405  1253   75009
# 6:  571017  1213   75014
