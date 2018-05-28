#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('data.csv')
####################################

## start writing your R code from here
plot(data$LTR, data$Room_Satisfy)
plot(data$Revenue, data$LengthStay)
plot(data$LengthStay, data$Room_Satisfy)
plot(data$LTR, data$Customer_Service)
## end your R code and logic 

####################################
##### write output file ############
# add your R code to write histogramLTR.png
####################################




