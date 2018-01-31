library(ReporteRs) # création de documents Word et PPTx

sortie <- docx(title = "Sauts de page") # création du document Word
# ajout d'un titre et d'un texte
sortie <- addTitle(sortie, "Présentation des données AirBnB")
sortie <- addParagraph(sortie,
                       c("Document rédigé par Olivier Decourt",
                         paste("le", # date automatique
                               Sys.Date())))
# saut de page
sortie <- addPageBreak(sortie)
# nouveau titre
sortie <- addTitle(sortie, "Statistiques descriptives")
# clôture et sauvegarde du document Word
writeDoc(sortie, file="C:/olivier/dunod/r/sauts de pages.docx")
