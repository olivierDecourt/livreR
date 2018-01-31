library(ReporteRs) # création de documents Word et PPTx

sortie <- docx(title="Texte seul") # création du document Word
# paragraphes de texte
par1 <- pot("L'objet ") +
  pot("flats", # mise en forme
      textProperties(font.family="Courier New")) +
  " est constitué de " +
  pot(format(nrow(flats), # résultat R
             big.mark = " "),
      textProperties(font.weight = "bold")) +
  " logements loués par AirBnB à Paris."
par2 <- pot("Voici la liste des ") +
  as.character(ncol(flats)) + # résultat R
  " informations connues " + # on peut couper le texte où on veut
  "sur ces logements :" 
# concaténation des paragraphes pot1 et pot2
sop1 <- set_of_paragraphs(par1, par2)
# insertion dans le document Word
sortie <- addParagraph(sortie, sop1)
# ajout d'un vecteur R sous forme de liste à puces
sortie <- addParagraph(sortie, 
                       colnames(flats),
                       par.properties = parProperties(
                         list.style = "unordered"))
# clôture et sauvegarde du document Word
writeDoc(sortie, file="C:/olivier/dunod/r/texte seul.docx")
