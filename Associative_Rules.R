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

#Create Dataframe with appropriate columns
NewDF <- data.frame(LengthOfStay=df$LengthStay, Gender=df$Gender, AgeRange=df$AgeRange, GPTier=df$GP_Tier, PurposeOfVisit = df$POV,
                    State = df$StateAbb, Location = df$Location, NPS = df$NPS)


#Convert column 'Length of stay' into a factor
NewDF$LengthOfStay <- factor(NewDF[ ,1])


##RIGHT HAND SIDE as NPS types (Detractor, Passive, or Promoter)

#Creating a transaction from the dataset
trans <- as(NewDF, "transactions")
summary(trans)
itemLabels(trans)


#Frequency of support parameter
png(filename="Frequency.png", width=800, height=600)
itemFrequencyPlot(trans, support=0.05, cex.names=0.6)
dev.off()


#Creating rules with LHS as NPS types
NPSrules <- apriori(trans, parameter = list(support = 0.01, confidence = 0.1, minlen = 2, target="rules"), 
                    appearance = list(rhs = "NPS=Detractor", default="lhs"))

summary(NPSrules)

#Sorting rules by support and confidence    
top.support.nps <- sort(NPSrules, decreasing = TRUE, na.last = NA, by = "support")
top.confidence.nps <- sort(NPSrules, decreasing = TRUE, na.last = NA, by = "confidence")


#Show the rules
inspect(top.support.nps)
inspect(top.confidence.nps)

png(filename="Support.png", width=800, height=600)
plot(top.support.nps)
dev.off()

png(filename="Confidence.png", width=800, height=600)
plot(top.confidence.nps)
dev.off()


## end your R code and logic 

####################################
##### write output file ############
# add your R code to write Frequency.png
####################################






