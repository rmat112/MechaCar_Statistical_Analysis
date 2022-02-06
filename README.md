# MechaCar_Statistical_Analysis

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.<br/>
In this challenge, you’ll help Jeremy and the data analytics team do the following:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## 1. Linear Regression to Predict MPG

A linear model is designed that predicts the mpg of MechaCar prototypes using several variables from the [MechaCar_mpg.csv](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv) file

- The data file linked above is imported and read into a dataframe
![import%26read.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/import%26read.png)

- An RScript [MechaCarChallenge.R](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R) is written for a linear regression model to be performed on all six variables 
![linear_regression.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/linear_regression.png)

- An RScript [MechaCarChallenge.R](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R) is written to create the statistical summary of the linear regression model with the intended p-values 
![summary_statistics.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/summary_statistics.png)

### Summary of the linear regression model

1. As seen in the image above, the following variables/coefficients provide a non-random amount of variance to the mpg values in the dataset:<br/>
  - Vehicle length 
  - ground clearance and 
  - the intercept

2. As we know, linear regression tests the following hypotheses:<br/>
  - H0(null hypothesis) : The slope of the linear model is zero, or m = 0<br/>
  - Ha(alternate hypohesis) : The slope of the linear model is not zero, or m ≠ 0<br/>
  
  Our linear model shows that the p-value of our linear regression analysis is 5.345 x 10-11, which is much smaller than our assumed significance level of 0.05%.     Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
  ![pvalue.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/pvalue.png)

3. From our linear regression model, the r-squared value is 0.7149, which means that roughly 71% of the variablilty of our dependent variable (mpg) is explained using this linear model
![r-sq.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/r-sq.png)

## 2. Suspension Coil Summary Statistics
The MechaCar [Suspension_Coil.csv](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv) dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

### a. Summary
An RScipt [MechaCarChallenge.R](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R) was written to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column
![total_summary.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

### b. Summary Grouped by Lot
An RScript [MechaCarChallenge.R](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R) was written to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
![Lot_summary.pn](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/Lot_summary.png)

### c. Design Specification
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. As seen from the total_summary and the lot_summary above, the combined variance (62.29 PSI) of the current manufacturing data and the variance from manufacturing lots 1 & 2 (0.98 PSI and 7.47 PSI, resp) meets this design specification (<100 PSI). However, the variance for Lot 3 (170.29 PSI) is significantly higher that 100 pounds per sq inch.

## 3. T-Tests on Suspension Coils
Performing t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. An RScript is written for t-test that compares all manufacturing lots and each manufacturing lot against mean PSI of the population [MechaCarChallenge.R](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R)

### a. Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
![one-sample-ttest.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/one-sample-ttest.png)

As seen from the T-Test result for the suspension coils across all manufacturing lots  it is seen that the p-value is not low enough (0.0603) for us to reject the null hypothesis.

### b. Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
#### Interpretation and findings for each lot individually
#### Lot 1
![lot1_ttest.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/lot1_ttest.png)
For Lot 1 p-value of 1 indicates that there isn't enough evidence to reject the null hypothesis. This means there is no statistical difference between the sample mean (Lot 1) and the population mean.

#### Lot 2
![lot2_ttest.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/lot2_ttest.png)
For Lot 2, p-value is 0.61. This value is still too high and indicates there isn't enough evidence to reject the null hypothesis. This means there is no statistical difference between the sample mean (Lot 2) and the population mean.

#### Lot 3
![lot3_ttest.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/lot3_ttest.png)
For Lot 3, p-value = 0.042 is less than 0.05. This means we can reject the null hypothesis and that sample mean is statistically different from the population mean.

## 4. Study Design: MechaCar vs Competition
A very important aspect of vehicle design is the highway fuel effeciency.

#### Metrics to be tested
Evaluate the MechaCar for highway fuel efficiency in comparison to the competition.

#### Null hypothesis or alternative hypothesis
H0(null hypothesis): MechCar's highway fuel efficiency is similar to the competition (the true mean difference, or "μd" is equal to zero)
Ha(alternate hypothesis): MechaCar's highway fuel efficiency is statistically different from the competition (μd" is not equal to zero)

#### Statistical test to test the hypothesis
It is recommended to use the two-sample t-tests for this design comparison because the two-sample t-tests are flexible and can be used to compare two samples, each from a different population. This is known as a pair t-test, because we pair observations in one dataset with observations in another.

#### Data needed to run the statistical test
We will need the highway fuel effeciency data not only for th MechaCar prototypes but also for the competition.
