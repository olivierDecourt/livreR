library(WriteXLS) # export Excel via Perl
# tester au préalable que Perl est bien installé
testPerl()
# Perl found.
# 
# All required Perl modules were found.

setwd("C:/olivier/dunod/r") # répertoire courant
# export avec mise en forme
WriteXLS(houses,
         "logements.xlsx",
         SheetNames = "maisons",
         row.names = FALSE,
         AdjWidth = TRUE, # largeur automatique des colonnes
         AutoFilter = TRUE, # filtres automatiques
         FreezeRow = 2, # 2 lignes figées 
         FreezeCol = 1, # 1 colonne figée
         Encoding = "latin1") # caractères accentués
