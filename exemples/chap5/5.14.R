# copie du data.table flats
apparts <- flats

# conversion en facteur du type de logement loué
apparts$property_type <- factor(apparts$property_type)
# liste des valeurs possibles
levels(apparts$property_type)
# [1] "Apartment" "Condomini" "Loft"

# à l'affichage du vecteur, on voit aussi la liste des niveaux
head(apparts$property_type)
# [1] Apartment Apartment Apartment Apartment Apartment Apartment
# Levels: Apartment Condomini Loft

# transformation en facteur des codes postaux
apparts$zipcode <- factor(apparts$zipcode,
                          nmax = 20)
# génère une erreur car > 20 codes postaux distincts
# Error in unique.default(x, nmax = nmax) : hash table is full
# --> la variable est restée numérique, pas de niveaux
levels(apparts$zipcode)
# NULL

# nouvelle tentative sans option nmax
apparts$zipcode <- factor(apparts$zipcode)
# combien de valeurs distinctes ?
nlevels(apparts$zipcode)
# [1] 74
# ... ce qui fait beaucoup pour des logements "parisiens"
# car Paris ne compte que 20 codes postaux différents

# transformation de la politique d'annulation en facteur ordonné
apparts$cancellation_policy <- ordered(apparts$cancellation_policy,
                                       levels=c("super_st",
                                                "strict",
                                                "moderate",
                                                "flexible"))
# liste des niveaux, on ne voit pas qu'ils sont ordonnés
# (sauf qu'ils ne sont pas dans l'ordre alphabétique)
levels(apparts$cancellation_policy)
# [1] "super_st" "strict"   "moderate" "flexible"

# à l'affichage du vecteur, les niveaux sont ordonnés avec <
head(apparts$cancellation_policy)
# [1] flexible flexible flexible flexible flexible flexible
# Levels: super_st < strict < moderate < flexible
