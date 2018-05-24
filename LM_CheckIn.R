#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('data.csv')
####################################

## start writing your R code from here
View(df)
str(df)

LinModLTR <- lm(formula=LTR ~ CheckIn, data=df)
summary(LinModLTR)

LinModLTR <- lm(formula=LTR ~ Hotel_Condition, data=df)
summary(LinModLTR)

LinModLTR <- lm(formula=LTR ~ Customer_Service, data=df)
summary(LinModLTR)

LinModLTR <- lm(formula=LTR ~ Hotel_Condition + CheckIn, data=df)
summary(LinModLTR)

LinModLTR <- lm(formula=LTR ~ Customer_Service + Hotel_Condition + CheckIn, data=df)
summary(LinModLTR)






LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ CheckIn, data=df)
summary(LinModSatisfaction)

LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Hotel_Condition, data=df)
summary(LinModSatisfaction)

LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Customer_Service, data=df)
summary(LinModSatisfaction)

LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Hotel_Condition + CheckIn, data=df)
summary(LinModSatisfaction)

LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Customer_Service + Hotel_Condition + CheckIn, data=df)
summary(LinModSatisfaction)

View(df)
str(df)
## end your R code and logic 

####################################
##### write output file ############
# add your R code to write output file
####################################

getwd()

setwd("C:/Users/Khushnud/stigmergy/Project")
