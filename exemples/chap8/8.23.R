old_par <- par(no.readonly = TRUE) # sauvegarde

par(las=1) # graduations d'axes à l'horizontale
par(mar=c(3,5,4,1)) # marges
par(cex=0.75) # taille des textes
# diagramme en bâtons des conditions d'annulation
# en fonction du type de location
barplot(table(houses$room_type,
              gsub("_","\n",
                   houses$cancellation_policy,
                   fixed=TRUE)),
        horiz=TRUE,
        col=c("gray20","gray50","gray80"),
        main=paste0("Politique d'annulation", "\n",
                    "des locations de maisons", "\n",
                    "selon le type de bien loué"))
# ajout d'une légende
legend("top", # emplacement
       levels(factor(houses$room_type)), # niveaux
       fill=c("gray20","gray50","gray80"), # couleurs
       ncol=1, # organisation
       cex=1.2, # taille des textes
       inset=c(0,0.05)) # décalage par rapport à l'emplacement

par(old_par) # restauration