library(ReporteRs) # création de documents Word et PPTx

sortie <- docx(title="Essai avec titres") # création du document Word
# ajout de deux titres de niveaux 1 et 2
sortie <- addTitle(sortie, "Présentation des données")
sortie <- addTitle(sortie, "Effectifs", level=2)
# texte comme dans l'exemple 9.10
par1 <- pot("Les données houses comptent ")+
  format(nrow(houses), big.mark=" ")+
  " lignes."
par2 <- pot("Les données flats comptent ")+
  format(nrow(flats), big.mark=" ") + 
  " lignes."
par3 <- pot("Toutes deux décrivent des logements ") +
  "loués via AirBnB sur Paris."
# ajout des trois paragraphes de texte dans le document
sortie <- addParagraph(sortie,
                       set_of_paragraphs(par1,
                                         par2,
                                         par3))
# clôture et sauvegarde du document Word
writeDoc(sortie, file="C:/olivier/dunod/r/titres et texte.docx")
