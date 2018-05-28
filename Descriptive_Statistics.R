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
library(modeest)

#Find MFV for mode PPT day 
mfv(data$LTR, na.rm = TRUE)
mfv(data$Room_Satisfy, na.rm = TRUE)
mfv(data$CheckIn, na.rm = TRUE)
mfv(data$Hotel_Condition, na.rm = TRUE)
mfv(data$Customer_Service, na.rm = TRUE)
mfv(data$Staff_Cared, na.rm = TRUE)

#Find Summary
summary(data$LTR)
summary(data$Room_Satisfy)
summary(data$CheckIn)
summary(data$Hotel_Condition)
summary(data$Customer_Service)
summary(data$Staff_Cared)



#Find Standard Deviation

sd(data$LTR)
sd(data$Room_Satisfy)
sd(data$CheckIn)
sd(data$Hotel_Condition)
sd(data$Customer_Service)
sd(data$Staff_Cared)

#Create histogram
#Change title and x axis

HistogramLTR <- hist(data$LTR, 
     main="Histogram for Likelihood to recommend", 
     xlab= "likelihood to recommend", 
     border="blue", 
     col="green",
     xlim=c(0,10),
     las=1, 
     breaks=5)

HistogramRoomSat <- hist(data$Room_Satisfy, 
     main="Histogram for Room Satisfaction", 
     xlab= "Room Satisfaction", 
     border="blue", 
     col="green",
     xlim=c(0,10),
     las=1, 
     breaks=5)

HistogramCheckIn <- hist(data$CheckIn, 
     main="Histogram for Check in", 
     xlab= "Check In", 
     border="blue", 
     col="green",
     xlim=c(0,10),
     las=1, 
     breaks=5)

HistogramHotelC <- hist(data$Hotel_Condition, 
     main="Histogram for Hotel Condition", 
     xlab= "Hotel Condition", 
     border="blue", 
     col="green",
     xlim=c(0,10),
     las=1, 
     breaks=5)

HistogramCustServ <- hist(data$Customer_Service, 
     main="Histogram for Customer Service", 
     xlab= "Customer Service", 
     border="blue", 
     col="green",
     xlim=c(0,10),
     las=1, 
     breaks=5)

HistogramStaffCared <- hist(data$Staff_Cared, 
     main="Histogram for Staff Cared", 
     xlab= "Staff Care", 
     border="blue", 
     col="green",
     xlim=c(0,10),
     las=1, 
     breaks=5)
#Create PNG file

png(filename="HistogramLTR.png", width=800, height=600)
plot(HistogramLTR)
dev.off()

png(filename="HistogramRoomSat.png", width=800, height=600)
plot(HistogramRoomSat)
dev.off()

png(filename="HistogramCheckIn.png", width=800, height=600)
plot(HistogramCheckIn)
dev.off()

png(filename="HistogramHotelC.png", width=800, height=600)
plot(HistogramHotelC)
dev.off()

png(filename="HistogramStaffCared.png", width=800, height=600)
plot(HistogramStaffCared)
dev.off()

#hist(df$Col, breaks=20)


## end your R code and logic 

####################################
##### write output file ############
# add your R code to write HistogramHotelC.png
####################################








