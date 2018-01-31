library(forcats) # gestion des facteurs

# copie du data.table flats
apparts <- flats

# transformation en facteur du type de logement loué
apparts$property_type <- factor(apparts$property_type)
# les niveaux sont par ordre alphabétique
levels(apparts$property_type)
# [1] "Apartment" "Condominium" "Loft"  

# tri des niveaux par prix moyen
apparts$property_type <- reorder(apparts$property_type,
                                 apparts$price,
                                 FUN=mean)
levels(apparts$property_type)
# [1] "Condominium" "Apartment"   "Loft"

# on renverse l'ordre des niveaux (dernier -> 1er,
# avant-dernier -> 2ème, antépénultième -> 3ème, etc.)
apparts$property_type <- fct_rev(apparts$property_type)
levels(apparts$property_type)
# [1] "Loft"        "Apartment"   "Condominium"

# tri des niveaux par nombre de logements loués
apparts$property_type <- fct_infreq(apparts$property_type)
levels(apparts$property_type)
# [1] "Apartment"   "Loft"        "Condominium"

# ordre forcé des niveaux à la création du facteur
apparts$property_type <- factor(apparts$property_type,
                                levels=c("Loft",
                                         "Condominium",
                                         "Apartment"))
levels(apparts$property_type)
# [1] "Loft"      "Condominium" "Apartment"

# passage en 1er d'un niveau particulier, 
# les autres se décalent
apparts$property_type <- relevel(apparts$property_type,
                                 "Apartment")
levels(apparts$property_type)
# [1] "Apartment" "Loft"      "Condominium"
