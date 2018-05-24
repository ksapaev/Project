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


## end your R code and logic 

####################################
##### write output file ############
# add your R code to write output file
####################################



