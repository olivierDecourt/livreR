library(data.table) # gestion des données optimisée
library(dplyr) # gestion simplifiée des données

# flats_df est un data.frame, flats_dt un data.table
flats_df <- as.data.frame(flats)
flats_dt <- flats

# création du nombre de chambres / hôte et du prix / hôte
# syntaxe par vecteur d'un data.frame
flats_df$bpa <- flats$bedrooms / flats$accommodates
flats_df$ppa <- flats$price    / flats$accommodates

# mêmes ratios créés sur un data.table
flats_dt[,c("bpa","ppa"):=.(bedrooms / accommodates,
                            price    / accommodates)]

# mêmes ratios créés en dplyr
flats_dplyr <- flats_dt %>%
  mutate(bpa = bedrooms / accommodates,
         ppa = price    / accommodates)

# mêmes ratios créés en dplyr (data.frame uniquement)
flats_dplyr2 <- flats_df %>%
  mutate_at(c("bedrooms", "price"),
            funs(. / accommodates))
