#Deliverable 1
# Import and read csv file as a dataframe.
mechaCar<- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

#Perform linear regression 
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, mechaCar)
summary(lm(vehicle_length~vehicle_weight+spoiler_angle+ground_clearance+AWD+mpg, mechaCar))
#p-value: 6.712e-11
#R-squared:  0.6791 

#Deliverable 2
# Import and read csv file as a dataframe.
SuspensionCoil<- read.csv(file='Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

#Mean, median, variance and standard deviation of the suspension coil’s PSI column.
total_summary <- SuspensionCoil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#Group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot)%>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#Deliverable 3
#Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(SuspensionCoil$PSI, mu=1500)

#Write three more RScripts to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
Lot1 <- subset(SuspensionCoil, Manufacturing_Lot == 'Lot1')
Lot2 <- subset(SuspensionCoil, Manufacturing_Lot == 'Lot2')
Lot3 <- subset(SuspensionCoil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu=1500)
#p-value = 1
t.test(Lot2$PSI, mu=1500)
#p-value = 0.6072
t.test(Lot3$PSI, mu=1500)
#p-value = 0.04168