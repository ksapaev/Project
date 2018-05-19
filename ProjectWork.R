#####################################
##### Do NOT delete this block #####
setwd(Sys.getenv('PROJECT_HOME'))
####################################

####################################
## write code to read input csv into data frame
project <- read.csv('data.csv')
####################################

## start writing your R code from here

library(ggplot2)

ggplot(project, aes(x=LTR, y=AgeRange, color=GP_Tier)) + geom_point()
## end your R code and logic 

####################################
##### write output file ############
# add your R code to write output file
####################################


