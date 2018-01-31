library(xlsx) # import et export Excel
setwd("C:/olivier/dunod/r") # répertoire courant
# export dans un 1er onglet
write.xlsx(houses,
           file = "export.xlsx",
           sheetName = "maisons",
           showNA = FALSE)
# export dans un 2nd onglet du même classeur
write.xlsx(flats[1:100,],
           file = "export.xlsx",
           sheetName = "appartements",
           showNA = FALSE,
           append = TRUE)
