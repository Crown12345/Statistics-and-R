# Challenge number 15 

#---------- Delivrable 1

# Load the library 
library(tidyverse) 

# Import and read the MechaCar_mpg.csv

MechaTable <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression using the lm() function. In the lm() function

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaTable)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaTable))

#---------- Delivrable 2

# Import and read the Suspension_Coil.csv

SuspenTable <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Summarize the PSI metrics for each lot: mean, median, variance, and standard deviation.
total_summary <- SuspenTable  %>% summarize(Mean=mean(PSI),Median = median(PSI),variance = var(PSI), SD = sd(PSI), .groups = 'drop') 
lot_summary <- SuspenTable  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),variance = var(PSI), SD = sd(PSI), .groups = 'keep') 

#---------- Delivrable 3

#t-test that compares all manufacturing lots against mean PSI of the population

t.test(SuspenTable$PSI,mu=1500)

#three t-tests that compare each manufacturing lot against mean PSI of the population 

lot1 <- subset(SuspenTable, Manufacturing_Lot=="Lot1")
lot2 <- subset(SuspenTable, Manufacturing_Lot=="Lot2")
lot3 <- subset(SuspenTable, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

