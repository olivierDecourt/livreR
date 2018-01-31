# les 5 quartiles des prix
quantile(houses$price)
#  0%   25%    50%   75%   100% 
#  20    60    100   197   3608 

# le 9e décile des prix
quantile(houses$price,
         probs=0.9)
#   90% 
# 342.8

# les quantiles à 20, 40, 60, 80% des prix
quantile(houses$price,
         probs=1:4/5)
# 20%  40%  60%  80% 
#  50   85  130  220
