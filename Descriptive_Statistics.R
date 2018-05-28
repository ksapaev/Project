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

HistogramRoomSat <- hist(data$Room_Satisfy, breaks = 20)
HistogramRoomSat

HistogramCheckIn <- hist(data$CheckIn, breaks = 20)
HistogramCheckIn

HistogramHotelC <- hist(data$Hotel_Condition, breaks = 20)
HistogramHotelC

HistogramCustServ <- hist(data$Customer_Service, breaks = 20)
HistogramCustServ

HistogramStaffCared <- hist(data$Staff_Cared, breaks = 20)
HistogramStaffCared

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








