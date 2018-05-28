#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('data.csv')
####################################

## start writing your R code from here
#Descriptive Stats

#Find mean 
mean(data$LTR)
mean(data$Room_Satisfy)
mean(data$CheckIn)
mean(data$Hotel_Condition)
mean(data$Customer_Service)
mean(data$Staff_Cared)

#Find median
median(data$LTR)
median(data$Room_Satisfy)
median(data$CheckIn)
median(data$Hotel_Condition)
median(data$Customer_Service)
median(data$Staff_Cared)

#Find mode
mode(data$LTR)
mode(data$Room_Satisfy)
mode(data$CheckIn)
mode(data$Hotel_Condition)
mode(data$Customer_Service)
mode(data$Staff_Cared)

#Find Range
#Find Standard Deviation

sd(data$LTR)
sd(data$Room_Satisfy)
sd(data$CheckIn)
sd(data$Hotel_Condition)
sd(data$Customer_Service)
sd(data$Staff_Cared)

#Create histogram
HistogramLTR <- hist(data$LTR, breaks = 20)
HistogramLTR
png("HistogramLTR")
HistogramRoomSat <- hist(data$Room_Satisfy, breaks = 20)
HistogramRoomSat
png("HistogramRoomSat")
HistogramCheckIn <- hist(data$CheckIn, breaks = 20)
HistogramCheckIn
png("HistogramCheckIn")
HistogramHotelC <- hist(data$Hotel_Condition, breaks = 20)
HistogramHotelC
png("HistogramHotelC")
HistogramCustServ <- hist(data$Customer_Service, breaks = 20)
HistogramCustServ
png("HistogramCustServ")
HistogramStaffCared <- hist(data$Staff_Cared, breaks = 20)
HistogramStaffCared
png("HistogramStaffCared")
#hist(df$Col, breaks=20)


## end your R code and logic 

####################################
##### write output file ############
# add your R code to write HistogramHotelC.png
####################################








