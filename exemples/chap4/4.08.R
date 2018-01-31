library(dplyr) # gestion simplifiée des données

# sélection explicite de 3 colonnes
colnames(flats %>% select(id, price, bedrooms))
# [1] "id"       "price"    "bedrooms"

# colonnes dont le nom se termine par "id"
colnames(flats %>% select(ends_with("id")))
# [1] "id"      "host_id"

# colonnes dont le nom commence par "pr"
colnames(flats %>% select(starts_with("pr")))
# [1] "property_type" "price"

# colonnes dont le nom contient "host"
colnames(flats %>% select(contains("host")))
# [1] "host_id"       "host_name"     "host_since"   
# [4] "host_location"
