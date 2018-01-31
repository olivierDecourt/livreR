library(data.table) # gestion des données optimisée
library(dplyr)      # gestion simplifiée des données

# initialisation du générateur aléatoire
set.seed(1)
# échantillon de 5 appartements
flats[sample(1:nrow(flats),5),.(id,zipcode,price)]
#           id zipcode price
# 1: 13604203   93400   120
# 2: 11876504   75004   146
# 3: 12449296   75009    73
# 4:  8431450   75015    85
# 5: 11578614   75018    45

# ré-initialisation du générateur aléatoire
set.seed(1)
# échantillon de 5 appartements
sample_n(flats[,.(id,zipcode,price)],5)
#           id zipcode price
# 1: 13604203   93400   120
# 2: 11876504   75004   146
# 3: 12449296   75009    73
# 4:  8431450   75015    85
# 5: 11578614   75018    45

# ré-initialisation du générateur aléatoire
set.seed(1)
# échantillon de 0,01% (5) des appartements
sample_frac(flats[,.(id,zipcode,price)],0.0001)
#           id zipcode price
# 1: 13604203   93400   120
# 2: 11876504   75004   146
# 3: 12449296   75009    73
# 4:  8431450   75015    85
# 5: 11578614   75018    45