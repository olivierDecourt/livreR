library(gmodels) # pour la fonction CrossTable

# répartition des maisons par type de bien loué
# et existence d'une note d'appréciation
CrossTable(houses$property_type,
           is.na(houses$review_scores_rating))
#    Cell Contents
# |-------------------------|
# |                       N |
# | Chi-square contribution |
# |           N / Row Total |
# |           N / Col Total |
# |         N / Table Total |
# |-------------------------|
#   
#   
#   Total Observations in Table:  639 
# 
# 
#                      | is.na(houses$review_scores_rating) 
# houses$property_type |     FALSE |      TRUE | Row Total | 
# ---------------------|-----------|-----------|-----------|
#                House |       360 |       177 |       537 | 
#                      |     1.236 |     2.126 |           | 
#                      |     0.670 |     0.330 |     0.840 | 
#                      |     0.891 |     0.753 |           | 
#                      |     0.563 |     0.277 |           | 
# ---------------------|-----------|-----------|-----------|
#            Townhouse |        41 |        47 |        88 | 
#                      |     3.851 |     6.620 |           | 
#                      |     0.466 |     0.534 |     0.138 | 
#                      |     0.101 |     0.200 |           | 
#                      |     0.064 |     0.074 |           | 
# ---------------------|-----------|-----------|-----------|
#                Villa |         3 |        11 |        14 | 
#                      |     3.868 |     6.650 |           | 
#                      |     0.214 |     0.786 |     0.022 | 
#                      |     0.007 |     0.047 |           | 
#                      |     0.005 |     0.017 |           | 
# ---------------------|-----------|-----------|-----------|
#         Column Total |       404 |       235 |       639 | 
#                      |     0.632 |     0.368 |           | 
# ---------------------|-----------|-----------|-----------|

# même tableau, simplifié
CrossTable(houses$property_type,
           is.na(houses$review_scores_rating),
           prop.t = FALSE,
           prop.c = FALSE,
           prop.chisq = FALSE)
#    Cell Contents
#   |-------------------------|
#   |                       N |
#   |           N / Row Total |
#   |-------------------------|
#   
#   
#   Total Observations in Table:  639 
# 
# 
#                      | is.na(houses$review_scores_rating) 
# houses$property_type |     FALSE |      TRUE | Row Total | 
# ---------------------|-----------|-----------|-----------|
#                House |       360 |       177 |       537 | 
#                      |     0.670 |     0.330 |     0.840 | 
# ---------------------|-----------|-----------|-----------|
#            Townhouse |        41 |        47 |        88 | 
#                      |     0.466 |     0.534 |     0.138 | 
# ---------------------|-----------|-----------|-----------|
#                Villa |         3 |        11 |        14 | 
#                      |     0.214 |     0.786 |     0.022 | 
# ---------------------|-----------|-----------|-----------|
#         Column Total |       404 |       235 |       639 | 
# ---------------------|-----------|-----------|-----------|