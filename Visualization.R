#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('data.csv')
####################################

## start writing your R code from here



## end your R code and logic 

####################################
##### write output file ############
# add your R code to write myPlotLTRReg.png
####################################

library(ggplot2)
library(ggmap)

###Example ggplot to base off of
myPlotLTR.Reg <- ggplot(data)


#Creating proper y and x axis with plot for LTR compared to region
myPlotLTR.Reg <- myPlotLTR.Reg + aes(x=LTR) + aes(y= Region)


#Choosing color and title
myPlotLTR.Reg <- myPlotLTR.Reg + geom_col( fill="blue", col="black") + ggtitle("LTR compared to Region" )
plot(myPlotLTR.Reg)
myPlotLTR.Reg

#Creating proper y and x axis with plot for Revenue compared Room Type
myPlotRevRoomType <- ggplot(data)
myPlotRevRoomType <- myPlotRevRoomType + aes(x= Revenue) + aes(y= RoomType)

#Choosing color and title
myPlotRevRoomType <- myPlotRevRoomType + geom_col( fill="green", col="black") + ggtitle("Revenue compared to Room Type" )
myPlotRevRoomType

#Creating proper y and x axis with plot for Revenue compared Length of Stay
myPlotRevLength <- ggplot(data)
myPlotRevLength <- myPlotRevLength + aes(x=Revenue) + aes(y= LengthStay)


#Choosing color and title for Revenue compared Length of Stay
myPlotRevLength <- myPlotRevLength + geom_col( fill="pink", col="black") + ggtitle("Average NPS by state" )
myPlotRevLength

#####################################################################
#Creating proper y and x axis with plot
myColorNpsSt <- ggplot(dfNM)
myColorNpsSt <- myColorNpsSt + aes(x=State) + aes(y= avg.NPS)

#Last bar chart with color 
myColorNpsSt <- myColorNpsSt + aes(x=State) + aes(y= avg.NPS)

#Choosing color and title for second Barchart
myColorNpsSt <- myColorNpsSt + geom_col( fill=avg.NPS, col="black") + ggtitle("Colored Average NPS by state" )
myColorNpsStmyColorNpsSt