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



#Viewing the Rules
rules <- apriori(NewDF, parameter = list(support=0.01,confidence=0.5))
summary(rules)

#Sorting rules by support and confidence    
top.support <- sort(rules, decreasing = TRUE, na.last = NA, by = "support")
top.confidence <- sort(rules, decreasing = TRUE, na.last = NA, by = "confidence")


#Show the top 10 rules
inspect(head(top.support, 10))
inspect(head(top.confidence, 10))

png(filename="Top10Support.png")
plot(head(top.support, 10))
dev.off()

png(filename="Top10Confidence.png")
plot(head(top.confidence, 10))
dev.off()


#Show the top 100 rules
inspect(head(top.support, 100))
inspect(head(top.confidence, 100))

png(filename="Top100Support.png")
plot(head(top.support, 100))
dev.off()

png(filename="Top100Confidence.png")
plot(head(top.confidence, 100))
dev.off()


##########################################
##LEFT HAND SIDE as NPS types (Detractor, Passive, or Promoter)

#Creating a transaction from the dataset
trans <- as(NewDF, "transactions")
summary(trans)
itemLabels(trans)


#Frequency of support parameter
png(filename="Frequency.png")
itemFrequencyPlot(trans, support=0.05, cex.names=0.6)
dev.off()


#Creating rules with LHS as NPS types
NPSrules <- apriori(trans, parameter = list(support = 0.01, confidence = 0.5,target="rules"), 
                    appearance = list(lhs = c("NPS=Detractor", "NPS=Passive", "NPS=Promoter"), default="rhs"))

summary(NPSrules)

#Sorting rules by support and confidence    
top.support.nps <- sort(NPSrules, decreasing = TRUE, na.last = NA, by = "support")
top.confidence.nps <- sort(NPSrules, decreasing = TRUE, na.last = NA, by = "confidence")


#Show the rules
inspect(top.support.nps)
inspect(top.confidence.nps)

png(filename="Support.png")
plot(top.support.nps)
dev.off()

png(filename="Confidence.png")
plot(top.confidence.nps)
dev.off()


## end your R code and logic 

####################################
##### write output file ############
# add your R code to write Confidence.png
####################################





