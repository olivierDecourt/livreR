library(ggplot2) # fonctions graphiques
library(ReporteRs) # création de documents Word et PPTx

sortie <- pptx() # création du document PowerPoint
# nouvelle diapositive et titre
sortie <- addSlide(sortie, slide.layout="Title and Content")
sortie <- addTitle(sortie, "Un graphique ggplot2")
# création d'un graphique ggplot2
graphique <- ggplot(flats)+
  aes(x=room_type)+
  geom_bar()+ # diagramme bâtons
  coord_flip()+ # bâtons horizontaux
  theme_bw()
# ajout du graphique à la diapositive en image vectorielle
sortie <- addPlot(sortie, 
                  fun=function(x){print(graphique)},
                  vector.graphic = TRUE)
# clôture et sauvegarde du document PowerPoint
writeDoc(sortie, file="C:/olivier/dunod/r/graphique.pptx")
