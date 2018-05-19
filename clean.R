#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
raw <- read.csv('raw_data.csv')
####################################

## start writing your R code from here
library(dplyr)

raw$STATE_R <- as.character(raw$STATE_R)

df <- raw[raw$STATE_R %in% state.abb,]

project <- data.frame(LTR = df$Likelihood_Recommend_H, Hotel_Condition = df$Condition_Hotel_H, Staff_Cared = df$Staff_Cared_H,
                      Customer_Service = df$Customer_SVC_H, Room_Satisfy = df$Guest_Room_H, NPS = df$NPS_Type, 
                      Reservation = df$RESERVATION_DATE_R, CheckIn = df$CHECK_IN_DATE_C, CheckOut = df$CHECK_OUT_DATE_C, 
                      LengthStay = df$LENGTH_OF_STAY_C, StateAbb = df$STATE_R, AgeRange = df$Age_Range_H, Gender = df$Gender_H,
                      GP_Tier = df$GP_Tier, POV = df$POV_CODE_C, Brand = df$Brand_PL, City = df$City_PL, 
                      Country = df$Country_PL, Region = df$Region_PL, Location = df$Location_PL, Revenue = df$REVENUE_USD_R, 
                      Relationship = df$Relationship_PL, stringsAsFactors=FALSE)

project <- project[complete.cases(project), ]


str(project$STATE_R)
#project <- na.omit(project)
head(project,20)


summary(project$Relationship_PL)



project[project$Guest_Country_H=="Switzerland",]




## end your R code and logic 

####################################
##### write output file ############
write.csv(df, file = 'data.csv')
####################################

