# les colonnes de calendar sont-elles numériques ?
sapply(calendar,FUN=is.numeric)
#  listing_id       date      price 
#        TRUE      FALSE       TRUE

# comparer avec l'affichage de lapply
lapply(calendar,FUN=is.numeric)
# $listing_id
# [1] TRUE
# 
# $date
# [1] FALSE
# 
# $price
# [1] TRUE
