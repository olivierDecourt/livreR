library(reshape2) # transposition
library(tidyr) # autres fonctions de transposition
library(dplyr) # gestion simplifiée des données
library(tibble) # affichage des ddnnées

# éclatement de la colonne amenities en plusieurs
# séparateur : pipe |, à noter \\| ici (expression régulière)
# création de variables am1 à am50 (plus que nécessaire)
houses2 <- separate(houses,
                    col=amenities,
                    into=paste0("am",1:50),
                    sep="\\|")
# transposition : une ligne par équipement
houses_eq <- melt(houses2,
                  id="id",
                  measure=paste0("am",1:50),
                  value.name = "equipement")
# affichage
as_tibble(houses_eq)
# A tibble: 31,950 × 3
#         id variable equipement
#      <int>   <fctr>      <chr>
# 1   5589471      am1         TV
# 2   3018762      am1         TV
# 3  12862174      am1         TV
# 4   6198459      am1         TV
# 5   2605719      am1   Cable TV
# 6    917659      am1   Internet
# 7   2375969      am1         TV
# 8  13146717      am1         TV
# 9   2680392      am1         TV
# 10  4838079      am1         TV
# ... with 31,940 more rows

# élimination des lignes vides + tri
houses_eq <- filter(houses_eq,
                    equipement != "") %>%
  arrange(id, equipement) %>%
  select(-variable)
# affichage
as_tibble(houses_eq)
# A tibble: 8,213 × 2
#       id          equipement
#    <int>               <chr>
# 1  57766            Cable TV
# 2  57766          Essentials
# 3  57766 Family/Kid Friendly
# 4  57766             Heating
# 5  57766            Internet
# 6  57766             Kitchen
# 7  57766         Safety Card
# 8  57766                  TV
# 9  57766              Washer
# 10 57766   Wireless Internet
# ... with 8,203 more rows
