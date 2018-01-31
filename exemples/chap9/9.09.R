# chunk de code R à intégrer dans un document .Rmd
# ne fonctionne qu'en produisant un document HTML avec knitr
```{r graphique_interactif, echo=FALSE, fig.cap="Graphique interactif plotly"}
library(plotly) # production de graphiques interactifs
library(ggplot2) # fonctions graphiques

graph <- ggplot(houses)+
  aes(x=price,
      y=review_scores_rating)+
  geom_point()+ # nuage de points
  theme_light()
ggplotly(graph) # restitution interactive
```
