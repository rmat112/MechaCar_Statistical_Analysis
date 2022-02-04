# MechaCar_Statistical_Analysis

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.<br/>
In this challenge, you’ll help Jeremy and the data analytics team do the following:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

A linear model is designed that predicts the mpg of MechaCar prototypes using several variables from the [MechaCar_mpg.csv](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv) file

- The data file linked above is imported and read into a dataframe
![import%26read.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/import%26read.png)

- An RScript [MechaCarChallenge.R](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R) is written for a linear regression model to be performed on all six variables 
![linear_regression.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/linear_regression.png)

- An RScript [MechaCarChallenge.R](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R) is written to create the statistical summary of the linear regression model with the intended p-values 
![summary_statistics.png](https://github.com/rmat112/MechaCar_Statistical_Analysis/blob/main/Resources/summary_statistics.png)

#### Summary of the linear regression model

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
