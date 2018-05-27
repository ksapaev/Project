#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
df <- read.csv('data.csv')
####################################

## start writing your R code from here



#Function to generate NPS
#Defining a vector equal to the 'Likelihood Recommend' column
LTR <- df$LTR

#Creating a function of NPS that returns a number
NPS <- function(LTR) {
  promoters  <- (sum(LTR > 8))/length(LTR)
  detractors <- (sum(LTR < 7))/length(LTR)
  nps <- (promoters-detractors)*100
  return(nps)
}

#Checking the value
NPS(LTR)


## end your R code and logic 

####################################
##### write output file ############
# add your R code to write output file
####################################

