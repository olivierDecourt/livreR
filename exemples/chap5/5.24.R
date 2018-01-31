# copie du data.table flats
apparts <- flats

# on trie par code postal puis par prix
setorder(apparts, zipcode, price)

# les appartements les plus chers par arrondissement ?
apparts[grepl("^750\\d{2}$", zipcode),
        tail(.SD,1),
        zipcode,
        .SDcols=c("price","accommodates","id")]
#     zipcode price accommodates       id
#  1:   75000    41            2  8435924
#  2:   75001   852            6 12697519
#  3:   75002  6081            2 11640000
#  4:   75003   802           16  4133072
#  5:   75004   952            4    39666
#  6:   75005  1257            6  8289096
#  7:   75006  1874            6  1529759
#  8:   75007  1285            4  8307140
#  9:   75008  2004            7  8579482
# 10:   75009  1002            2  6755931
# 11:   75010   490            6   600105
# 12:   75011   802           16 11266443
# 13:   75012   922           14 10814996
# 14:   75013  1129            8  8193446
# 15:   75014   701           10   617069
# 16:   75015  3506           16  8895576
# 17:   75016   917            6  6038703
# 18:   75017  1502            4  7171653
# 19:   75018  3306            4  7284676
# 20:   75019  1002            8  9524652
# 21:   75020  1352            7 13612593
#     zipcode price accommodates       id