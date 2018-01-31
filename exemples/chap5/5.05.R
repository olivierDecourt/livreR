# copie du data.table flats
apparts <- flats

# mise en tranches du prix de location, avec des bornes à
# 50, 100, 150, 200 euros
apparts$prix <- cut(apparts$price,
                    breaks = c(-Inf,50,100,150,200,Inf))
summary(apparts$prix)
# (-Inf,50]   (50,100]  (100,150]  (150,200] (200, Inf] 
#     11915      26321       7517       2794       2947

# avec des bornes supérieures à 1000 euros, l'affichage par
# défaut est beaucoup moins agréable
apparts$prix <- cut(apparts$price,
                    breaks = c(-Inf,1000,2500,5000,Inf))
summary(apparts$prix)
# (-Inf,1e+03] (1e+03,2.5e+03] (2.5e+03,5e+03]    (5e+03, Inf] 
#        51456              34               3               1 

# on améliore l'affichage avec l'option dig.lab
apparts$prix <- cut(apparts$price,
                    breaks = c(-Inf,1000,2500,5000,Inf),
                    dig.lab = 5)
summary(apparts$prix)
# (-Inf,1000] (1000,2500] (2500,5000] (5000, Inf] 
#       51456          34           3           1 
