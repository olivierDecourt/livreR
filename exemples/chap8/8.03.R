# liste des couleurs disponibles
col <- colors(distinct=TRUE)
col <- gsub("\\d", "", col) # élimination des suffixes numériques
col[!duplicated(col)]       # élimination des doublons
# [1] "white"                "aliceblue"           
# [3] "antiquewhite"         "aquamarine"          
# [5] "azure"                "beige"               
# [7] "bisque"               "black"               
# [9] "blanchedalmond"       "blue"                
# [11] "blueviolet"           "brown"               
# ... 
