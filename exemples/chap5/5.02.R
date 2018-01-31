library(dplyr) # gestion simplifiée des données

# copie du data.table calendar pour le modifier
cal <- calendar
# on remplace les noms de variables par d'autres
colnames(cal) <- c("id","date.location","prix")
head(cal)
#         id date.location prix
# 1: 6159911    2016-10-01   50
# 2: 6159911    2016-09-30   50
# 3: 6159911    2016-09-29   50
# 4: 6159911    2016-09-28   50
# 5: 6159911    2016-09-27   50
# 6: 6159911    2016-09-26   50

# on remplace un seul nom de variable
colnames(cal)[3] <- "prix_euros"
head(cal)
#         id date.location prix_euros
# 1: 6159911    2016-10-01         50
# 2: 6159911    2016-09-30         50
# 3: 6159911    2016-09-29         50
# 4: 6159911    2016-09-28         50
# 5: 6159911    2016-09-27         50
# 6: 6159911    2016-09-26         50

# on renomme des variables avec dplyr
cal <- cal %>% rename(listing_id = id,
                      date_location = date.location)
head(cal)
#    listing_id date_location prix_euros
# 1:    6159911    2016-10-01         50
# 2:    6159911    2016-09-30         50
# 3:    6159911    2016-09-29         50
# 4:    6159911    2016-09-28         50
# 5:    6159911    2016-09-27         50
# 6:    6159911    2016-09-26         50