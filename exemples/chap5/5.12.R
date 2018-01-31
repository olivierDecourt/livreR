library(eeptools) # pour sa fonction age_calc
library(lubridate) # manipulation de dates

# copie du data.table flats
apparts <- flats
# calcul de l'ancienneté des hôtes avec eeptools
# erreurs car la colonne host_since contient des NA
apparts$anciennete1 <- age_calc(ymd(apparts$host_since),
                                units="years",
                                enddate = ymd("2017-06-30"))
# Error in if (any(enddate < dob)) { : 
#     missing value where TRUE/FALSE needed

# la colonne n'est pas créée
head(apparts$anciennete1)
# NULL

# alternative à partir de lubridate
apparts$anciennete2 <- difftime(ymd("2017-06-30"),
                                ymd(apparts$host_since)) / 
                          dyears(1)
head(apparts$anciennete2)
# [1] 3.671233 2.046575 3.235616 4.369863 1.547945 3.235616