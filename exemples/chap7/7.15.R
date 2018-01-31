library(data.table) # gestion des données optimisée

# prix moyen, toutes dates confondues
calendar[,mean(price)]
# 117.6969

# nombre de lignes de l'objet calendar
calendar[,.N]
# 9461700

# statistiques sur le prix par nuitée
calendar[,.(moy = mean(price),
            med = median(price))]
#         moy med
# 1: 117.6969  80

# prix moyen par mois (date est un texte aaaa-mm-jj)
calendar[,mean(price),by=substr(date,1,7)]
#      substr       V1
#  1: 2016-10 120.6525
#  2: 2016-09 116.0415
#  3: 2016-08 117.3675
#  4: 2016-07 122.9908
#  5: 2017-07 115.0057
#  6: 2017-06 116.0678
#  7: 2017-05 116.6029
#  8: 2017-04 116.7032
#  9: 2017-03 116.3536
# 10: 2017-02 116.5721
# 11: 2017-01 116.9584
# 12: 2016-12 119.4530
# 13: 2016-11 118.7572

# ratio entre prix minimum et prix maximum demandé pour
# un même logement ; sortie limitée aux logements où ce
# ratio est supérieur à 15 (le prix maximum demandé est
# au moins 15 fois le prix minimum demandé à une autre date)
calendar[,.(min=min(price),
            max=max(price),
            moy=mean(price),
            med=median(price),
            ratio=round(max(price)/min(price),2)),
         by=listing_id][ratio > 15,]
#    listing_id min  max      moy med  ratio
# 1:   13303845  30  500 447.5243 500  16.67
# 2:    6038512  17  272 168.6433 179  16.00
# 3:   13103591  31  490  51.6087  32  15.81
# 4:   13375670   1  125  76.4684  99 125.00
# 5:    6479478  38  580 407.8942 580  15.26
# 6:   13228147  10  159 136.8755 139  15.90
# 7:   13033768   9 1500  82.4767  79 166.67

# prix moyen par arrondissement
flats[grepl("^750\\d{2}$",zipcode),mean(price),by=zipcode]
#     zipcode        V1
#  1:   75017  88.36407
#  2:   75008 171.98699
#  3:   75018  74.10182
#  4:   75013  73.38159
#  5:   75009  99.44016
#  6:   75010  81.26934
#  7:   75016 110.30971
#  8:   75007 143.21109
#  9:   75015  89.80697
# 10:   75006 144.18156
# 11:   75019  64.68772
# 12:   75020  64.40809
# 13:   75011  79.16884
# 14:   75004 134.86719
# 15:   75001 137.96324
# 16:   75002 118.68264
# 17:   75000  41.00000
# 18:   75003 114.75574
# 19:   75012  77.98673
# 20:   75005 115.19745
# 21:   75014  82.01537
#     zipcode        V1
