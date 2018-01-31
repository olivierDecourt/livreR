library(dplyr) # gestion simplifiée des données

# prix médian par arrondissement (uniquement les 20
# codes postaux correspondant aux arrondissements parisiens)
prix_arr <- flats %>% 
  filter(grepl("^750\\d{2}$",zipcode),
         zipcode != "75000") %>%
  group_by(zipcode) %>%
  summarise(price = median(price))

old_par <- par(no.readonly = TRUE) # sauvegarde
par(las=1) # graduations d'axes à l'horizontale
par(mar=c(3.5,3.5,1,1)) # marges
# barres par arrondissement, en fonction du prix médian
barplot(height=prix_arr$price,
        names=prix_arr$zipcode,
        horiz=TRUE, # barres horizontales
        cex.names = 0.9)

# pour ordonner les barres par ordre croissant
# il faut trier ET avoir une variable en facteur
prix_arr <- prix_arr %>%
  arrange(price) %>%
  mutate(zipcode = factor(zipcode))
# même graphique avec les barres en ordre croissant
barplot(height=prix_arr$price,
        names=prix_arr$zipcode,
        horiz=TRUE,
        cex.names = 0.9)

par(old_par) # restauration