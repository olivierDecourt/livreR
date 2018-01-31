library(ReporteRs) # création de documents Word et PPTx

sortie <- docx() # création du document Word
# ajout d'un titre et d'un texte
sortie <- addTitle(sortie,
                   "Un FlexTable simple")
sortie <- addParagraph(sortie,
                       c("Extrait des données houses",
                         "10 premières lignes",
                         "Quelques variables"))
# tableau de base (vanilla.table) : 10 premières lignes de houses
sortie <- addFlexTable(sortie,
                       vanilla.table(
                         houses[1:10,
                                c("id"     , "price",
                                  "zipcode", "bedrooms")]))
# clôture et sauvegarde du document Word
writeDoc(sortie, file = "C:/olivier/dunod/r/vanilla.docx")
