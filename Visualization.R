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
library(ggmap)


myPlotLTRReg <- ggplot(data)

#Find mean of LTR for each region using tapply

#Creating proper y and x axis with plot for LTR compared to region
myPlotLTRReg <- myPlotLTRReg + aes(x=Region) + aes(y= LTR)


#Choosing color and title
myPlotLTRReg <- myPlotLTRReg + geom_col( fill="blue", col="black") + ggtitle("LTR compared to Region" )
plot(myPlotLTRReg)
myPlotLTRReg

#Creating proper y and x axis with plot for Revenue compared Room Type
#Convert 

myPlotAgeRev <- ggplot(data)
myPlotAgeRev <- myPlotAgeRev + aes(x= AgeRange) + aes(y= Revenue)

#Choosing color and title
myPlotAgeRev <- myPlotAgeRev + geom_col( fill="green", col="black") + ggtitle("Revenue compared to Age Range" )
myPlotAgeRev

#Creating proper y and x axis with plot for Revenue compared Length of Stay
#Tranform Revenue to logorithm2
myPlotRevLength <- ggplot(data)
myPlotRevLength <- myPlotRevLength + aes(x=LengthStay) + aes(y= Revenue)


#Choosing color and title for Revenue compared Length of Stay
myPlotRevLength <- myPlotRevLength + geom_col( fill="pink", col="black") + ggtitle("Revenue compared to Length of Stay" )
myPlotRevLength

#Creating proper y and x axis with plot for Revenue compared Length of Stay

myPlotPOVLTR <- ggplot(data) 
myPlotPOVLTR <- myPlotPOVLTR + aes(x= POV) + aes(y= LTR )


#Choosing color and title for Revenue compared Length of Stay
myPlotPOVLTR <- myPlotPOVLTR + geom_col( fill="pink", col="black") + ggtitle("Revenue compared to Length of Stay" )
myPlotPOVLTR

summary(data$LTR)
summary(data$POV)
#Divide LTR to the number of rows in business and leisure 
#MeanLTR <- mean(data$LTR, data$POV)

#Plot to png
png(filename="myPlotRevLength.png", width=800, height=600)
plot(myPlotRevLength)
dev.off()

png(filename="myPlotRevRoomType.png", width=800, height=600)
plot(myPlotRevRoomType)
dev.off()

png(filename="myPlotLTRReg.png", width=800, height=600)
plot(myPlotLTRReg)
dev.off()

png(filename="myPlotAgeRev.png", width=800, height=600)
plot(myPlotAgeRev)
dev.off()

#df <- data.frame(data)
#HeatMap
mode(data)
LeHMap <- heatmap(as.matrix(data), main = "Hotel Data", trace= "none", margins = c(10,15))
LeHMap

## end your R code and logic 

####################################
##### write output file ############
# add your R code to write output file
####################################


#####################################################################
