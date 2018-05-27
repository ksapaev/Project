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


str(NewDF)

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


#Show all rules
png(filename="Support.png")
plot(head(top.support, 10))
dev.off()

png(filename="Confidence.png")
plot(head(top.confidence, 10))
dev.off()




## end your R code and logic 

####################################
##### write output file ############
# add your R code to write Confidence.png
####################################





