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
# add your R code to write output file
####################################



###Example ggplot to base off of
myPlotAvg <- ggplot(dfNM)


#Creating proper y and x axis with plot
myPlotAvg <- myPlotAvg + aes(x=State) + aes(y= avg.NPS)


#Choosing color and title
myPlotAvg <- myPlotAvg + geom_col( fill="blue", col="black") + ggtitle("Mean NPS by State" )
myPlotAvg

#Creating proper y and x axis with plot
myPlotNpsSt <- ggplot(dfNM)
myPlotNpsSt <- myPlotNpsSt + aes(x=State) + aes(y= avg.NPS)

#Different Barchart where the x-axis is sorted by NPS of state
myPlotNpsSt <- myPlotNpsSt + aes(x=avg.NPS) + aes(y= State)


#Choosing color and title for second Barchart
myPlotNpsSt <- myPlotNpsSt + geom_col( fill="pink", col="black") + ggtitle("Average NPS by state" )
myPlotNpsSt

#Creating proper y and x axis with plot
myColorNpsSt <- ggplot(dfNM)
myColorNpsSt <- myColorNpsSt + aes(x=State) + aes(y= avg.NPS)

#Last bar chart with color 
myColorNpsSt <- myColorNpsSt + aes(x=State) + aes(y= avg.NPS)

#Choosing color and title for second Barchart
myColorNpsSt <- myColorNpsSt + geom_col( fill=avg.NPS, col="black") + ggtitle("Colored Average NPS by state" )
myColorNpsSt