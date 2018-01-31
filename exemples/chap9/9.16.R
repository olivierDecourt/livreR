library(ReporteRs) # création de documents Word et PPTx
library(reshape2) # transposition

sortie <- docx() # création du document Word
# ajout d'un titre
sortie <- addTitle(sortie,
                   "Un FlexTable tableau croisé")
# nombre de maison par type de bien et de location
tabN <- dcast(houses,
              property_type~room_type,
              value.var = "price",
              fun=length)
# même information en % du total
tabPct <- dcast(houses,
                property_type~room_type,
                value.var = "price",
                fun=function(x){
                  round(100*length(x)/
                          nrow(houses),
                        1)})
# on laisse une case vide dans l'affichage
colnames(tabN)[1] <- " "
# on transforme tabN en FlexTable
tableau <- FlexTable(tabN)
# on ajoute une ligne d'en-tête supplémentaire
tableau <- addHeaderRow(tableau,
                        c("", "Type de location"),
                        colspan = c(1,3),
                        first = TRUE)
# on change la justification de quelques cases
tableau[,2:4] <- parProperties(text.align="right")
# on insère sous chaque effectif (newpar=TRUE) les %
tableau[,2:4, newpar=TRUE] <- tabPct[,-1]
# on suffixe par un texte " %"
tableau[,2:4] <- " %"
# on centre la 1ère ligne des en-têtes
tableau[1:2,,to="header"] <- parProperties(text.align="center")
# lignes alternées blanc / gris pâle
tableau <- setZebraStyle(tableau,
                         even="white",
                         odd=gray(0.9))
# insertion du tableau dans le document Word
sortie <- addFlexTable(sortie, tableau)
# clôture et sauvegarde du document Word
writeDoc(sortie, file="C:/olivier/dunod/r/FlexTable complexe.docx")
