# répartition des appartements par type de bien
# diagramme en bâtons
barplot(table(flats$room_type), 
        cex.names=0.7,
        col="mediumpurple")
