# Linear Regression to Predict MPG
# Use the library() function to load the dplyr package.
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
mecha_df <- read.csv('MechaCar_mpg.csv')

# Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df) #generate linear regression model

# determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df)) #generate summary statistics
# Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825
# p-value: 5.35e-11

# Suspension coil statistics
# Import and read the csv file
susp_coil <- read.csv('Suspension_Coil.csv')

# total_summary to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <- susp_coil %>% summarise(Mean = mean(PSI), Meadian = median(PSI), Variance = var(PSI), SD = sd(PSI))

# group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Meadian = median(PSI), Variance = var(PSI), SD = sd(PSI))

# T-test: perform t-tests to determine if all manufacturing lots are statistically different from the population mean of 1,500 pounds per square inch
t.test(susp_coil$PSI, mu = 1500)
## p-value = 0.06028

# determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
t.test(subset(susp_coil, Manufacturing_Lot == 'Lot1')$PSI, mu = 1500)
## p-value = 1

t.test(subset(susp_coil, Manufacturing_Lot == 'Lot2')$PSI, mu = 1500)
## p-value = 0.6072

t.test(subset(susp_coil, Manufacturing_Lot == 'Lot3')$PSI, mu = 1500)
## p-value = 0.04168


