library(dplyr) # gestion simplifiée des données

# copie du data.table houses
maisons <- houses

# décile de prix auquel appartient chaque logement
# 1 = 1er décile, 2 = 2e décile, etc.
maisons$d_price <- ntile(maisons$price,10)
head(maisons[,c("id","price","d_price")])
#          id price d_price
# 1:  5589471   191       8
# 2:  3018762    99       5
# 3: 12862174    30       1
# 4:  6198459   200       8
# 5:  2605719   280       9
# 6:   917659    75       4
