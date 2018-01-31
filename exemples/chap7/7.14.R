library(dplyr) # gestion simplifiée des données

# statistiques par type de logement et de location
group_by(houses, property_type, room_type) %>%
  summarise(effectif    = length(price),
            prix_median = median(price),
            prix_moyen  = round(mean(price),2))
# Source: local data table [8 x 5]
# Groups: property_type

#   grouped_dt [8 × 5]
#   property_type       room_type effectif prix_median prix_moyen
#           <chr>           <chr>    <int>       <dbl>      <dbl>
# 1         House Entire home/apt      384       136.0     192.60
# 2     Townhouse Entire home/apt       68       138.0     166.99
# 3         House    Private room      149        50.0      62.06
# 4         Villa Entire home/apt       13      1102.0    1234.69
# 5     Townhouse    Private room       19        39.0      67.68
# 6     Townhouse     Shared room        1        35.0      35.00
# 7         House     Shared room        4        51.5      59.50
# 8         Villa    Private room        1       290.0     290.00

# statistiques sur les maisons des 14e et 15e arrondissements
# de Paris 
# la fonction summarise_at n'accepte pas les data.tables
as.data.frame(houses) %>% 
  filter(zipcode %in% c("75014","75015")) %>%
  group_by(zipcode) %>%
  summarise_at(c("price", "accommodates"),
               funs(mean)) %>%
  setNames(c("code_postal", "prix_moyen", 
             "nombre_moyen_hotes"))
# A tibble: 2 × 3
#   code_postal prix_moyen nombre_moyen_hotes
#         <chr>      <dbl>              <dbl>
# 1       75014   249.2353           5.235294
# 2       75015   239.5000           4.775000
