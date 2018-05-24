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
library(arules)
library(arulesViz)
library(kernlab)

#Converting as character
df$NPS <- as.character(df$NPS)
#Defining Promoters and passives as Not Detractors
df$NPS[df$NPS != "Detractor"] <- "NotDetractor"
#Formatting column as factor
df$NPS <- as.factor(df$NPS)


#Creating indexes
randomIndex <- sample(1:dim(df)[1])
summary(randomIndex)

#Setting a cut point
cutPoint2_3 <- floor(2*dim(df)[1]/3)
cutPoint2_3

#Creating a train dataframe
trainData <- df[randomIndex[1:cutPoint2_3],]
str(trainData)
length(trainData$NPS)
#Creating a test dataframe
testData <- df[randomIndex[(cutPoint2_3+1):dim(df)[1]],]
str(testData)
length(testData$NPS)

#Running SVM on train data
svmOut <- ksvm(NPS ~ ., data=trainData, kernel="rbfdot", kpar="automatic", C=5, prob.model=TRUE)

#Predicting SVM for test data
svmPredict <- predict(svmOut, testData, type="votes")

#Creating a dataframe for prediction
compTable <- data.frame(testData[,9], svmPredict[1,])
str(svmPredict)
#Showing predicted results in table
table(compTable)
str(svmPredict)



#Checking 1000th survey for the SVM model
compTable_1000 <- data.frame(testData[1000,9], svmPredict[1,1000])
table(compTable_1000)


## end your R code and logic 

####################################
##### write output file ############
# add your R code to write output file
####################################



