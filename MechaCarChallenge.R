# Deliverable 1

# Load dplyr package
library(dplyr)

# Import/Read 'mpg' CSV file as DataFrame
MechaCar <- read.csv('resources/Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

# Determine p-value and r-squared value via summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))


# Deliverable 2

# Import/Read 'Suspension Coil' CSV file
Suspension <- read.csv('Resources/Data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create Summary DataFrame
total_summary <- Suspension %>% summarize(Mean=mean(PSI) , Median=median(PSI), Variance=var(PSI), SD=sd(PSI) , )

# Create Lot Summary DataFrame
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI) , Median=median(PSI), Variance=var(PSI), SD=sd(PSI) , )


# Deliverable 3

# Peform t-test on lots
t.test(Suspension$PSI,mu = 1500)

# Lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)