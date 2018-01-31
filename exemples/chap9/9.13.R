library(ReporteRs) # création de documents Word et PPTx
# police pour tous les documents produits via ReporteRs
options("ReporteRs-fontsize"=24, # taille = 24 pt
        "ReporteRs-default-font"="Calibri")
sortie <- pptx() # création du document PowerPoint

# vecteur contenant les organisations de diapositives
dispos <- slide.layouts(sortie)
dispos # affichage du vecteur
# [1] "Blank"                   "Title Only"             
# [3] "Title and Content"       "Section Header"         
# [5] "Title and Vertical Text" "Comparison"             
# [7] "Content with Caption"    "Title Slide"            
# [9] "Two Content"             "Vertical Title and Text"

# nouvelle diapositive
sortie <- addSlide(sortie, slide.layout="Title Slide")
# ajout de contenu
sortie <- addTitle(sortie, "Présentation des données AirBnB")
sortie <- addSubtitle(sortie, "Olivier Decourt")
# nouvelle diapositive
sortie <- addSlide(sortie, slide.layout=dispos[3])
# ajout de contenu
sortie <- addTitle(sortie, "Statistiques descriptives")
sortie <- addParagraph(sortie, pot("Insérer les tableaux ici"))
# clôture et sauvegarde du document PowerPoint
writeDoc(sortie, file="C:/olivier/dunod/r/présentation.pptx")

# retour aux valeurs par défaut
options("ReporteRs-fontsize"=10, 
        "ReporteRs-default-font"="Helvetica")
