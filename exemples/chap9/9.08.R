# chunk de code R à intégrer dans un document .Rmd
```{r graphique_basique, echo=FALSE, fig.cap="Graphique statique", fig.width=3,  fig.height=4}
library(ggplot2) # fonctions graphiques
graph <- ggplot(houses)+
  aes(x=property_type)+
  geom_bar(fill="gray")+ # diagramme bâtons
  coord_flip() # bâtons horizontaux
print(graph) # insertion du graphique dans le document final
```
