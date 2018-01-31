library(dplyr) # gestion simplifiée des données

# prix moyen par date en décembre 2016
prix_moyen <- calendar %>%
  filter(substr(date,1,4)=="2016",
         substr(date,6,7)=="12") %>%
  group_by(date) %>%
  summarise(price = mean(price)) %>%
  arrange(date) %>%
  mutate(date = as.integer(substr(date,9,10)))

old_par <- par(no.readonly = TRUE) # sauvegarde

par(mfrow=c(2,2)) # découpage en 4 zones du graphique
# évolution du prix moyen par jour en décembre 2016
plot(price ~ date, prix_moyen, type="l")
plot(price ~ date, prix_moyen, type="b")
plot(price ~ date, prix_moyen, type="o")
plot(price ~ date, prix_moyen, type="s")
par(mfrow=c(1,1)) # retour à une zone unique

par(old_par) # restauration
