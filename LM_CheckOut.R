#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('data.csv')
####################################

## start writing your R code from here

library(ggplot2)

#Linear model for Likelihood to Recommend

#LTR - StaffCared
LinModLTR <- lm(formula=LTR ~ Staff_Cared, data=df)
summary(LinModLTR)

plot <- ggplot(df, aes(x=Staff_Cared, y=LTR)) +geom_count()+ stat_smooth(method = "lm", formula = y ~ x, se = FALSE, col = "red") 
plot <- plot + labs(x = "Staff Cared", y = "Likelihood to Recommend")
plot <- plot  + coord_fixed() + theme_minimal() + scale_x_continuous( breaks = 1:10)+ scale_y_continuous( breaks = 1:10)

png(filename="LTR_StaffCared.png", width=800, height=600)
plot
dev.off()

#LTR - RoomSatisfy
LinModLTR <- lm(formula=LTR ~ Room_Satisfy, data=df)
summary(LinModLTR)

plot <- ggplot(df, aes(x=Room_Satisfy, y=LTR)) +geom_count()+ stat_smooth(method = "lm", formula = y ~ x, se = FALSE, col = "red") 
plot <- plot + labs(x = "Room Satisfied", y = "Likelihood to Recommend")
plot <- plot  + coord_fixed() + theme_minimal() + scale_x_continuous( breaks = 1:10)+ scale_y_continuous( breaks = 1:10)

png(filename="LTR_RoomSatisfied.png", width=800, height=600)
plot
dev.off()

#LTR - CustomerService
LinModLTR <- lm(formula=LTR ~ Customer_Service, data=df)
summary(LinModLTR)

plot <- ggplot(df, aes(x=Customer_Service, y=LTR)) +geom_count()+ stat_smooth(method = "lm", formula = y ~ x, se = FALSE, col = "red") 
plot <- plot + labs(x = "Customer Service", y = "Likelihood to Recommend")
plot <- plot  + coord_fixed() + theme_minimal() + scale_x_continuous( breaks = 1:10)+ scale_y_continuous( breaks = 1:10)

png(filename="LTR_CustomerService.png", width=800, height=600)
plot
dev.off()


#LTR - StaffCared + RoomSatisfy + CustomerService + LengthOfStay
LinModLTR <- lm(formula=LTR ~ Customer_Service + Staff_Cared + Room_Satisfy + LengthStay, data=df)
summary(LinModLTR)



#############

#Linear model for Overall Satisfaction

#OverallSatisfaction - StaffCared
LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Staff_Cared, data=df)
summary(LinModSatisfaction)

plot <- ggplot(df, aes(x=Staff_Cared, y=Overall_Satisfaction)) +geom_count()+ stat_smooth(method = "lm", formula = y ~ x, se = FALSE, col = "red") 
plot <- plot + labs(x = "Staff Cared", y = "Overall Satisfaction")
plot <- plot  + coord_fixed() + theme_minimal() + scale_x_continuous( breaks = 1:10)+ scale_y_continuous( breaks = 1:10)

png(filename="Satisfaction_StaffCared.png", width=800, height=600)
plot
dev.off()

#OverallSatisfaction - RoomSatisfy
LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Room_Satisfy, data=df)
summary(LinModSatisfaction)

plot <- ggplot(df, aes(x=Room_Satisfy, y=Overall_Satisfaction)) +geom_count()+ stat_smooth(method = "lm", formula = y ~ x, se = FALSE, col = "red") 
plot <- plot + labs(x = "Room Satisfied", y = "Overall Satisfaction")
plot <- plot  + coord_fixed() + theme_minimal() + scale_x_continuous( breaks = 1:10)+ scale_y_continuous( breaks = 1:10)

png(filename="Satisfaction_RoomSatisfied.png", width=800, height=600)
plot
dev.off()

#OverallSatisfaction - CustomerService
LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Customer_Service, data=df)
summary(LinModSatisfaction)

plot <- ggplot(df, aes(x=Customer_Service, y=Overall_Satisfaction)) +geom_count()+ stat_smooth(method = "lm", formula = y ~ x, se = FALSE, col = "red") 
plot <- plot + labs(x = "Customer Service", y = "Overall Satisfaction")
plot <- plot  + coord_fixed() + theme_minimal() + scale_x_continuous( breaks = 1:10)+ scale_y_continuous( breaks = 1:10)

png(filename="Satisfaction_CustomerService.png", width=800, height=600)
plot
dev.off()


#OverallSatisfaction - StaffCared + RoomSatisfy + CustomerService + LengthOfStay
LinModSatisfaction <- lm(formula=Overall_Satisfaction ~ Customer_Service + Staff_Cared + Room_Satisfy + LengthStay, data=df)
summary(LinModSatisfaction)




#Create dataframe of just the 10th row
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
# add your R code to write LTR_CustomerService.png
####################################






