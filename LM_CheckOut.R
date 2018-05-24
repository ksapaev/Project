#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('data.csv')
####################################

## start writing your R code from here


LinModLTR <- lm(formula=LTR ~ Staff_Cared, data=df)
summary(LinModLTR)

LinModLTR <- lm(formula=LTR ~ Room_Satisfy, data=df)
summary(LinModLTR)

LinModLTR <- lm(formula=LTR ~ Customer_Service + Hotel_Condition + Staff_Cared + Room_Satisfy + LengthStay, data=df)
summary(LinModLTR)




LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Staff_Cared, data=df)
summary(LinModSatisfaction)

LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Room_Satisfy, data=df)
summary(LinModSatisfaction)

LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Customer_Service + Hotel_Condition + Staff_Cared + Room_Satisfy + LengthStay, data=df)
summary(LinModSatisfaction)




#Create dataframe of just the 10th row
test <- df[100:110,]

#Test/predict the dataframe with 10th element. Result is Not Detractor for both.
LTR1test <- predict(LinModLTR, test, type="response")
ifelse(LTR1test<7, "Detractor", "Not Detractor")

LTR2test <- predict(LinModSatisfaction, test, type="response")
ifelse(LTR2test<7, "Detractor", "Not Detractor")

test$LTR
LTR1test
LTR2test

## end your R code and logic 

####################################
##### write output file ############
# add your R code to write output file
####################################



