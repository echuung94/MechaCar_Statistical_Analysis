# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?</br>
The two variables that provided a non-random amount of variance to the mpg values were vehicle length and ground clearance. The vehicle length had a p-value of 2.60e-1 and ground clearance had a p-value of 5.21e-08. Both of these variables had an extremely small p-value, leading to a high level of significance. The other variables: vehicle weight, spoiler angle, and AWD had higher p-values indicating a random amount of variance that were not statistically significant to this model. 

2.  Is the slope of the linear model considered to be zero? Why or why not?</br>
The slope of the linear model is not considered to be zero. The summary shows that there is significant linear relationship between the independent variables and the dependent variable. If the independent variables did not significantly affect the dependent variable, the linear model will then result in a zero slope. 

3. Does this lineary model predict mpg of MechaCar prototypes effectively? Why or why not?</br>
This linear model shows an R squared value of 0.7149. The R value shows that with the five different independent variables, although some are not statistically significant, would predict the mpg of MechaCar prototypes approximxately 71% of the time. This model would be satisfactory in predicting prototypes effectively. 

Below is the statistical summary of the linear regression model. 
![summarytable](https://github.com/echuung94/MechaCar_Statistical_Analysis/blob/main/Images/summarytable.png)

## Summary Statistics on Suspension Coils 
1.  The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?</br>
In the Suspension coil dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using R, a summary statistics table was created to show the suspension coil's PSI continuous variable across all manufacturing lots and the following PSI metrics for each lot: mean, median, variance, and standard deviation. </br>
The design specifications dictate that the variance for the suspension coils must not exceed 100 pounds per square inch. The total summary table of all the manufacturing lots show a variance of 62.29 PSI, meaning that the overall, it does meet the design sepcifications. Taking a look at the individual lots (Lot 1, Lot 2, and Lot 3), Lot 1 has a variance of 0.98 PSI and Lot 2 has a variance of 7.47 PSI. Lot 1 and Lot 2 will meet the design specification unlike Lot 3 which has a variance of 170.29 PSI, exceeding the specification variance. The MechaCar team should work with Lot 1 and Lot 2. 

Total lot summary:</br>
![totalsummary](https://github.com/echuung94/MechaCar_Statistical_Analysis/blob/main/Images/totalsummary.png)</br>

Individual lot summary:</br>
![lotsummary](https://github.com/echuung94/MechaCar_Statistical_Analysis/blob/main/Images/lotsummary.png)

## T-Tests on Suspension Coils 
 The t.test() function was used to determine if the PSI across each manufacturing lot and all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.</br>

Looking at t-test summary for all manufacturing lots, there is a mean of 1498.78 and a p-value of 0.06. The t-test results indicate that there is not enough evidence to support rejecting the null hypothesis.</br>
![lottest](https://github.com/echuung94/MechaCar_Statistical_Analysis/blob/main/Images/lottest.png)</br>

Lot 1 shows a sample mean of 1500 with a p-value of 1. Given that the p-value is higher than the common significance level of 0.05, there is not enough evidence to reject the null hypothesis. This test is not statistically significant.</br>
Lot 2 shows a similar sample mean of 1500.2 with a slightly lower p-value of 0.6072. Although it is lower than Lot 1, there is not enough evidence to reject the null hypothesis.</br>
Lot 3 resulted in a sample mean of 1496.14 with a p-value of 0.04168. The p-value is lower than the common significance level of 0.05. This indicates that the null hypothesis can be rejected.</br>
![lot1](https://github.com/echuung94/MechaCar_Statistical_Analysis/blob/main/Images/lot1.png)</br>
![lot2](https://github.com/echuung94/MechaCar_Statistical_Analysis/blob/main/Images/lot2.png)</br>
![lot3](https://github.com/echuung94/MechaCar_Statistical_Analysis/blob/main/Images/lot3.png)


## Study Design: MechaCar vs Competition 
A study design that can quantify how the MechaCar performs against the competition - </br>
Questions to address: 
1. What metric or metrics are you going to test?</br>
The metrics that will be tested are cost and safety ratings.</br>
2. What is the null hypothesis or alternative hypothesis?</br> 
Null hypothesis: There is a positive correlation between price and safety ratings for both MechaCar and its competition. The higher the ratings, the higher the price of the car.</br> 
Alternative hypothesis: There is no correlation between the price of cars and its safety ratings.</br> 
3. What statistical test would you use to test the hypothesis? And why?</br> 
A simple linear regression would be used because we are trying to predict the dependent variable (price of each car) based on the independent variable (safety ratings).</br> 
4. What data is needed to run the statistical test?</br>
The data that I would need to complete this study are the following: 
- 10 different types of cars: Sedan, SUV, Crossover 
- Safety ratings for each type of car model and body type
- Car price for each type of car model 
