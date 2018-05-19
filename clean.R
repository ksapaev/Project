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

project <- df %>% filter(STATE_R %in% state.abb & !is.na(Likelihood_Recommend_H) & !is.na(Condition_Hotel_H) &!is.na(Staff_Cared_H) & !is.na(NPS_Type) & !is.na(Gender_H) & 
                         !is.na(df$LENGTH_OF_STAY_C) & !is.na(df$Age_Range_H) & !is.na(df$GP_Tier) & !is.na(Hotel.Name.Long_PL) &
                         !is.na(CHECK_IN_DATE_C) & !is.na(CHECK_OUT_DATE_C) & !is.na(POV_CODE_C) ) %>%
                  select(Likelihood_Recommend_H, NPS_Type, CHECK_IN_DATE_C, CHECK_OUT_DATE_C, LENGTH_OF_STAY_C, STATE_R, Age_Range_H, Gender_H, GP_Tier, POV_CODE_C, Hotel.Name.Long_PL, City_PL, Country_PL)

project$STATE_R <- as.factor(project$STATE_R)

df$POV_CODE_C



project <- df %>% filter(STATE_R %in% state.abb) %>%
  select(Likelihood_Recommend_H, Condition_Hotel_H, Staff_Cared_H, NPS_Type, RESERVATION_DATE_R, CHECK_IN_DATE_C, CHECK_OUT_DATE_C, LENGTH_OF_STAY_C, STATE_R, Age_Range_H, Gender_H, GP_Tier, POV_CODE_C, Hotel.Name.Long_PL, City_PL, Country_PL)

project <- project[complete.cases(project), ]

#project <- na.omit(project)
head(project)






project[project$Guest_Country_H=="Switzerland",]




## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'data.csv')
####################################

