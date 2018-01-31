# maisons dont le nom de l'hôte commence par A
head(houses[grepl("^A",
                  houses$host_name),
            host_name])
# [1] "Aurélie"     "Alexandra"   "Aurélie"    
# [4] "Antoine"     "Alexandrine" "Aurélie"  

# maisons dont le nom de l'hôte se termine par un r
head(houses[grepl("r$",
                  houses$host_name),
            host_name])
# [1] "Olivier"          "Balthasar"       
# [3] "Xavier"           "Olivier"         
# [5] "Marie Et Olivier" "Olivier"    

# maisons dont le nom de l'hôte commence par une lettre
# entre A et C inclus, suivi d'au moins 6 autres lettres
head(houses[grepl("^[A-C][a-z]{6,}",
                  houses$host_name),
            host_name])
# [1] "Balthasar"   "Alexandra"   "Caroline"   
# [4] "Antoine"     "Alexandrine" "Antoine" 

# maisons dont le nom de l'hôte contient un point
head(houses[grepl("\\.",
                  houses$host_name),
            host_name])
# [1] "M. Achraf"

# maisons dont le nom de l'hôte comporte exactement 9 lettres
head(houses[grepl("^\\w{9}$",
                  houses$host_name),
            host_name])
# [1] "Stephanie" "Balthasar" "Alexandra" "Dominique"
# [5] "Josephine" "Gabriella"

# maisons dont le nom de l'hôte comporte autre chose que
# des lettres (espaces, ponctuation, etc.)
head(houses[grepl("\\W",
                  houses$host_name),
            host_name])
# [1] "Tim & Jen"                                                     
# [2] "Marie Ange"                                                    
# [3] "Denis & Annegret"                                              
# [4] "Sarah & Pierre-Mathieu"                                        
# [5] "Sandrine, Léopoldine, Pierre-Guilhem, Guilhem, Sammy, Séverine"
# [6] "Carole Et Laurent"
