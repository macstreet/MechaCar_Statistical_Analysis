# Deliverable 1

# Load dplyr package
library(dplyr)

#Import/Read mpg CSV file as DataFrame
MechaCar <- read.csv('resources/Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

#Determine p-value and r-squared value via summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))

