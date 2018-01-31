library(ReporteRs) # création de documents Word et PPTx
library(dplyr) # gestion simplifiée des données

sortie <- docx() # création du document Word
# ajout d'un titre
sortie <- addTitle(sortie,
                   "Un FlexTable statistique")
# extraction de statistiques sur les appartements
base <- flats %>%
  group_by(property_type) %>%
  summarise(n=length(price),
            moy=round(mean(price),2),
            med=median(price))
# insertion dans un FlexTable sans en-têtes de colonnes
tableau <- FlexTable(base,
                     header.columns=FALSE)
# personnalisation des en-têtes de colonnes
tableau <- addHeaderRow(tableau,
                        c("",
                          "Nombre de logements",
                          "Prix moyen/nuit",
                          "Prix médian/nuit"))
# affichage pour vérification (fenêtre Viewer de RStudio)
print(tableau)
# insertion du tableau dans le document Word
sortie <- addFlexTable(sortie, tableau)
# clôture et sauvegarde du document Word
writeDoc(sortie, file="C:/olivier/dunod/r/FlexTable.docx")
