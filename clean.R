#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('raw_data.csv')
####################################

## start writing your R code from here
library(dplyr)

df$STATE_R <- as.character(df$STATE_R)

project <- df %>% filter(STATE_R %in% state.abb & !is.na(Likelihood_Recommend_H) & !is.na(NPS_Type) & !is.na(Gender_H) & 
                         !is.na(df$LENGTH_OF_STAY_C) & !is.na(df$Age_Range_H) & !is.na(df$GP_Tier))
project$STATE_R <- as.factor(project$STATE_R)



summary(project)

project[project$Guest_Country_H=="Switzerland",]
## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'data.csv')
####################################

