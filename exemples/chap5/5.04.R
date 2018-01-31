# copie du data.tables houses
maisons <- houses

# calcul du prix par hôte
maisons$prix_par_personne <- maisons$price / maisons$accommodates
head(maisons$prix_par_personne)
# [1] 31.83333 24.75000 30.00000 33.33333 35.00000
# [6] 37.50000

# arrondi à l'entier supérieur
head(ceiling(maisons$prix_par_personne))
# [1] 32 25 30 34 35 38

# arrondi à l'entier le plus proche
head(round(maisons$prix_par_personne))
# [1] 32 25 30 33 35 38

# arrondi à une décimale
head(round(maisons$prix_par_personne,1))
# [1] 31.8 24.8 30.0 33.3 35.0 37.5

# arrondi à la dizaine la plus proche
head(round(maisons$prix_par_personne,-1))
# [1] 30 20 30 30 40 40
