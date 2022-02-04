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