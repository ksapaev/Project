#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('data.csv')
####################################

## start writing your R code from here

#Linear model for Likelihood to Recommend

#LTR - CheckIn
LinModLTR <- lm(formula=LTR ~ CheckIn, data=df)
summary(LinModLTR)

plot <- ggplot(df, aes(x=CheckIn, y=LTR)) +geom_count()+ stat_smooth(method = "lm", formula = y ~ x, se = FALSE, col = "red") 
plot <- plot + labs(x = "Check In", y = "Likelihood to Recommend")
plot <- plot  + coord_fixed() + theme_minimal() + scale_x_continuous( breaks = 1:10)+ scale_y_continuous( breaks = 1:10)

png(filename="LTR-CheckIn.png", width=800, height=600)
plot
dev.off()

#LTR - HotelCondition
LinModLTR <- lm(formula=LTR ~ Hotel_Condition, data=df)
summary(LinModLTR)

plot <- ggplot(df, aes(x=Hotel_Condition, y=LTR)) +geom_count()+ stat_smooth(method = "lm", formula = y ~ x, se = FALSE, col = "red") 
plot <- plot + labs(x = "Hotel Condition", y = "Likelihood to Recommend")
plot <- plot  + coord_fixed() + theme_minimal() + scale_x_continuous( breaks = 1:10)+ scale_y_continuous( breaks = 1:10)

png(filename="LTR-HC.png", width=800, height=600)
plot
dev.off()


#LTR - CheckIn + HotelCondition
LinModLTR <- lm(formula=LTR ~ Hotel_Condition + CheckIn, data=df)
summary(LinModLTR)


#############

#Linear model for Overall Satisfaction

#OverallSatisfaction - CheckIn
LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ CheckIn, data=df)
summary(LinModSatisfaction)

plot <- ggplot(df, aes(x=CheckIn, y=Overall_Satisfaction)) +geom_count()+ stat_smooth(method = "lm", formula = y ~ x, se = FALSE, col = "red") 
plot <- plot + labs(x = "Check In", y = "Overall Satisfaction")
plot <- plot  + coord_fixed() + theme_minimal() + scale_x_continuous( breaks = 1:10)+ scale_y_continuous( breaks = 1:10)

png(filename="Satisfaction-CheckIn.png", width=800, height=600)
plot
dev.off()

#OverallSatisfaction - HotelCondition
LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Hotel_Condition, data=df)
summary(LinModSatisfaction)

plot <- ggplot(df, aes(x=Hotel_Condition, y=Overall_Satisfaction)) +geom_count()+ stat_smooth(method = "lm", formula = y ~ x, se = FALSE, col = "red") 
plot <- plot + labs(x = "Hotel Condition", y = "Overall Satisfaction")
plot <- plot  + coord_fixed() + theme_minimal() + scale_x_continuous( breaks = 1:10)+ scale_y_continuous( breaks = 1:10)

png(filename="Satisfaction-HC.png", width=800, height=600)
plot
dev.off()


#OverallSatisfaction - CheckIn + HotelCondition
LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Hotel_Condition + CheckIn, data=df)
summary(LinModSatisfaction)






#Create dataframe of sample 10 elements
test <- df[sample(df$LTR, 10, replace=FALSE),]


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

