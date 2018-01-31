library(forcats) # gestion des facteurs

# copie du data.table houses
maisons <- houses

# mise en facteur du quartier où est situé le logement
maisons$neighbourhood_cleansed <- factor(maisons$neighbourhood_cleansed)
# il y a 20 niveaux
levels(maisons$neighbourhood_cleansed)
#  [1] "Batignolles-Monceau" "Bourse"             
#  [3] "Buttes-Chaumont"     "Buttes-Montmartre"  
#  [5] "Élysée"              "Entrepôt"           
#  [7] "Gobelins"            "Hôtel-de-Ville"     
#  [9] "Louvre"              "Luxembourg"         
# [11] "Ménilmontant"        "Observatoire"       
# [13] "Opéra"               "Palais-Bourbon"     
# [15] "Panthéon"            "Passy"              
# [17] "Popincourt"          "Reuilly"            
# [19] "Temple"              "Vaugirard"

# remplacement des niveaux par d'autres, avec moins de
# valeurs distinctes ==> fusion de valeurs
levels(maisons$neighbourhood_cleansed) <-
  c("Nord-ouest", "Centre",
    "Nord-est"  , "Nord-ouest",
    "Centre"    , "Sud-ouest",
    "Sud-est"   , "Centre",
    "Centre"    , "Centre",
    "Nord-est"  , "Sud-ouest",
    "Centre"    , "Centre",
    "Centre"    , "Sud-ouest",
    "Nord-ouest", "Sud-est",
    "Centre"    , "Sud-ouest")
# il n'y a plus que 6 niveaux
levels(maisons$neighbourhood_cleansed)
# [1] "Nord-ouest" "Centre"     "Nord-est"   "Sud-ouest" 
# [5] "Sud-est"

# mise en facteur du code postal
maisons$zipcode <- factor(maisons$zipcode)
# il y a 42 valeurs distinctes
nlevels(maisons$zipcode)
# [1] 42

# tous les niveaux présents dans < 5% des logements sont fusionnés
maisons$zipcode2 <- fct_lump(maisons$zipcode,
                             p=0.05,
                             other="Autres")
# il n'y a plus que 8 niveaux, avec "Autres" en dernier
levels(maisons$zipcode2)
# [1] "75011"  "75013"  "75014"  "75015"  "75018"  "75019"  
# [7] "75020" "Autres"
