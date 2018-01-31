library(data.table) # gestion des données optimisée
library(dplyr) # gestion simplifiée des données
library(dtplyr) # version de dplyr pour les data.tables

# les 5 maisons les plus chères (prix/nuit en euros)
# le résultat est un data.table
arrange(houses, desc(price))[1:5,.(id,price)]
#          id price
# 1: 9028169  3608
# 2: 6042209  2765
# 3: 5859850  2154
# 4: 9105310  2004
# 5: 6041405  1253

# tri des maisons par code postal
codepos <- select(houses,zipcode) %>% arrange(zipcode)
# les 6 premières valeurs...
head(codepos)
#    zipcode
# 1:        
# 2:        
# 3:        
# 4:   17200
# 5:      75
# 6:   75001

# ... et les 6 dernières
tail(codepos)
#    zipcode
# 1:   94270
# 2:   94300
# 3:   94340
# 4:   94340
# 5:   94410
# 6:     adf

# tri en présence de NA : même tri par code postal que
# précédemment, mais en remplaçant la chaîne vide par NA
# le tri par !is.na(...) permet de placer les NA en tête
codepos2 <- select(houses,zipcode) %>% 
  mutate(zip = na_if(zipcode,"")) %>% 
  arrange(! is.na(zip),
          zip)
head(codepos2)
#    zipcode   zip
# 1:            NA
# 2:            NA
# 3:            NA
# 4:   17200 17200
# 5:      75    75
# 6:   75001 75001
