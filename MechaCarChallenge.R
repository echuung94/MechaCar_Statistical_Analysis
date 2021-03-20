# Deliverable 1 

#1.Use the library() function to load the dplyr package.
library(dplyr)

#2.Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#3.Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

#4. Use summary function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))

# Deliverable 2 

#1. Import and read in the Suspension_coil.csv
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#2. Rscript that creates a total summary 
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#3. Rscript that creates a lot_summary 
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')

# Deliverable 3 

#1. Rscript using t.test()
t.test(SuspensionCoil$PSI, mu=1500)

#2. Rscripts using t.test() function and subset() for each manufacturing lot 
#Lot 1 
t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
#Lot 2 
t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
#Lot 3 
t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
