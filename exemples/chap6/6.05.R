library(gdata) # fonctions de gestion de doublons
library(dplyr) # gestion simplifiée des données

# combien de lignes dans le data.table houses ?
nrow(houses)
# [1] 639

# combien d'hôtes différents ?
nrow(houses[!duplicated(houses$host_id),])
# [1] 568

# combien d'hôtes n'ayant qu'une seule maison louée ?
nrow(houses[!duplicated2(houses$host_id),])
# [1] 524

# liste des identifiants d'hôtes sans doublons
hotes <- unique(houses$host_id)
length(hotes)  
# [1] 568

# même question en dplyr
hotes <- distinct(houses, host_id)
nrow(hotes)
# [1] 568
