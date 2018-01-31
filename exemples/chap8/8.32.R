library(ggplot2) # fonctions graphiques

# boîte à moustache des prix par type de location
box <- ggplot(houses) +
         aes(x = room_type, y = price) +
         geom_boxplot()
box

# avec des moyennes en plus
box + geom_point(stat = "summary", 
                 colour = "red",
                 shape = 18,
                 size = 4,
                 fun.y = "mean")

# et avec les T en bouts de moustaches
ggplot(houses) +
  aes(x = room_type,
      y = price) +
  geom_errorbar(stat = "boxplot", width = 0.2) + 
  geom_boxplot() + 
  geom_point(stat = "summary", 
             colour = "red",
             shape = 18,
             size = 4,
             fun.y = "mean")