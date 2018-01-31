library(dplyr) # gestion simplifiée des données
library(stringr) # fonctions de manipulation de textes

# copie du data.table houses
maisons <- houses
# nombre initial de lignes
nrow(maisons)
# [1] 639

# lignes où le code postal commence par 75 
# et compte 5 caractères
nrow(filter(maisons,
            nchar(zipcode)==5 &
              substr(zipcode,1,2) == "75"))
# [1] 599

# 1er élément de la liste des équipements
maisons$equipement1 <- word(maisons$amenities,
                            1,
                            sep=fixed("|"))
head(maisons$equipement1)
# [1] "TV"       "TV"       "TV"       "TV"      
# [5] "Cable TV" "Internet"     

# affichage tronqué de la liste des équipements
maisons$equipements <- str_trunc(maisons$amenities,
                                 20)
head(maisons$equipements)
# [1] "TV|Internet|Wirel..." "TV|Cable TV|Inter..."
# [3] "TV|Internet|Wirel..." "TV|Cable TV|Inter..."
# [5] "Cable TV|Internet..." "Internet|Wireless..."
