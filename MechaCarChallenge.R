
#Deliverable 1
#Linear Regression to Predict MPG

library(dplyr)
#Import and read in the MechaCar_mpg.csv file as a dataframe.
Mechar_car_file <- read.csv(file='MechaCar_mpg.csv')

#Perform linear regression using the lm() function. 
#In the lm() function, pass in all six variables (i.e., columns), 
#and add the dataframe you created in Step 4 as the data parameter.

mechar_lm <- lm(formula = mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = Mechar_car_file)
mechar_lm

#Determine the p-value and the r-squared value for the linear regression model
summary(mechar_lm)

#---------------------------------------------------------------------------


#Deliverable 2
#Summary Statistics on Suspension Coils

suspension_file <- read.csv(file='Suspension_Coil.csv')

#Write an RScript that creates a total_summary dataframe using the summarize() function to 
#get the mean, median, variance, and standard deviation of the suspension coil's PSI column.

suspension_total_summary <- summarize(suspension_file, Mean = mean(PSI),Median=median(PSI),Variance=var(PSI), Standard_Devation=sd(PSI))
suspension_total_summary

#Write an RScript that creates a lot_summary dataframe using the group_by() and 
#the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation 
#of the suspension coil's PSI column.

suspension_lot_summary <- suspension_file %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median=median(PSI),Variance=var(PSI), Standard_Devation=sd(PSI))
suspension_lot_summary

#--------------------------------------------------------------------------

#Deliverable 3
#T-Tests on Suspension Coils

#In your MechaCarChallenge.RScript, write an RScript using the t.test() function 
#to determine if the PSI across all manufacturing lots is statistically different 
#from the population mean of 1,500 pounds per square inch.
t.test(suspension_file$PSI, mean=1500)


#Next, write three more RScripts in your MechaCarChallenge.RScript using the 
#t.test() function and its subset() argument to determine if the PSI for each 
#manufacturing lot is statistically different from the population mean of 
#1,500 pounds per square inch.

suspension_lot1 <- subset(suspension_file,Manufacturing_Lot=="Lot1")
suspension_lot2 <- subset(suspension_file,Manufacturing_Lot=="Lot2")
suspension_lot3 <- subset(suspension_file,Manufacturing_Lot=="Lot3")

t.test(suspension_lot1$PSI,mean=1500)
t.test(suspension_lot2$PSI,mean=1500)
t.test(suspension_lot3$PSI,mean=1500)
