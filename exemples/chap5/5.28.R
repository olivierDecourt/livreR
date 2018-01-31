# fonction qui recherche l'existence d'un équipement donné
# motif = nom de l'équipement (en minuscules) encadré
# de 0 ou 1 caractère | (le séparateur dans la liste amenities)
equipe_de <- function(df, equipement){
  motif <- paste("\\|?",tolower(equipement),"\\|?",
                 sep="")
  res <- grepl(motif, tolower(df$amenities))
  return(res)
}
# copie du data.table flats
apparts <- flats
# création de variables booléennes
# équipement en télévision, lave-linge, connexion Internet
apparts$tv         <- equipe_de(apparts,"Tv")
apparts$lave_linge <- equipe_de(apparts,"washer")
apparts$internet   <- equipe_de(apparts,"Internet")
summary(apparts[,.(tv, lave_linge,internet)])
#      tv          lave_linge       internet      
# Mode :logical   Mode :logical   Mode :logical  
# FALSE:15218     FALSE:11545     FALSE:2485     
# TRUE :36276     TRUE :39949     TRUE :49009