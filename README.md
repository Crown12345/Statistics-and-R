# Statistics-and-R
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.
In this challenge, you’ll help Jeremy and the data analytics team do the following:
•	Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
•	Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
•	Run t-tests to determine if the manufacturing lots are statistically different from the mean population
•	Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.


## Linear Regression to Predict MPG
•	Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
After getting the summary output of the data. We can notice that the variables vehicle length, ground clearance and the intercept present a small value of Pr(>|t|).
Pr(>|t|) [Intercept] = 5,08e-08
Pr(>|t|) [vehicle length] = 2,60e-12
Pr(>|t|) [ground clearance] = 5,21e-08
According to our results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model.

![image](https://user-images.githubusercontent.com/82984956/128616455-ba9bb75b-5db2-42a0-b52a-a0227890ce36.png)



•	Is the slope of the linear model considered to be zero? Why or why not?
To answer this question, linear regression tests the following hypotheses:
H0 : The slope of the linear model is zero, or m = 0
Ha : The slope of the linear model is not zero, or m ≠ 0.
If there is no significant linear relationship, each dependent value would be determined by random chance and error. Therefore, our linear model would be a flat line with a slope of 0.
the p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.0071%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
•	Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
To deceive whatever the model is predicting mpg of MechaCar prototypes effectively or not we need to check the R squared value. But since we are working on multiple variables model we will focus on the adjusted R squared.
The Adjusted R squared is equal to 0,6825. 
Based on the table below, we can assume that the model is representing moderately the mpg.


![image](https://user-images.githubusercontent.com/82984956/128616477-315eb308-e8d5-4639-b8d2-775e6c0fc781.png)



## Summary Statistics on Suspension Coils
•	Based on the table total_summary we can clearly see that  the variance = 62.29 is in the tolerance of the design specifications for the MechaCar suspension coils which is 100.

![image](https://user-images.githubusercontent.com/82984956/128616506-57ec85fa-9d12-4f77-a475-e665b2a22d7e.png)

•	But based on the lot_summary table we can notice that the first and the second lot fit the requirement. But the third one is out of tolerance with a variance of 170.

![image](https://user-images.githubusercontent.com/82984956/128616509-53684f2c-1eb4-46d5-9072-aef44629e2b0.png)


Deliverable 3: T-Tests on Suspension Coils 
RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
•	H0 : There is no statistical difference between the observed sample mean and its presumed population mean.
•	H1 : There is a statistical difference between the observed sample mean and its presumed population mean.

![image](https://user-images.githubusercontent.com/82984956/128616511-96945564-a785-4c56-a0da-cfa60367d6df.png)

 
Assuming our significance level was the common 0.05 percent, our p-value = 0,06 is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis that say that , and we would state that the two means are statistically similar.

## T-Tests on Suspension Coils

Script to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

1.	Lot 1 sample actually has the exact sample mean of 1500 with a p-Value of 1, clearly. So we will accept the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean (1500).
2.	Similarly to Lot 2 with a sample mean of 1500.02 and a p-Value of 0.61; the null hypothesis is accepted  the sample mean and the population mean of 1500 are statistically similar.
3.	Lot 3 has a sample mean of 1496.14 and the p-Value is 0.04 < the common significance level of 0.05. So we will reject the null hypothesis that this sample mean and the presumed population mean are not statistically different.

![image](https://user-images.githubusercontent.com/82984956/128616521-e84d1f9b-13f3-4d37-9b3e-6784dbea4786.png)


From this result we notice that the mean of the third lot has decreased. So, it will be a necessary to check the process of production to fit the client requirements.  

## Study Design: MechaCar vs Competition


Metrics

First of all, we should proceed to collect the data history for all manufacturers. The data should cover a reasonable period to provide a correct result.
-	Selling price.
-	Type (City or highway)
-	Engine (Gasoline, Electric)
-	Speed.
-	city or highway fuel efficiency.
-	Horse power.
-	maintenance cost
- Safety Rating

Hypothesis: Null and Alternative

Then we can decide which factors are the most important for MechaCar’s type.
After that we can proceed to test if the car’s price is well fixed regarding the performance of the car or not.
•	Null Hypothesis (Ho): The price of MechaCar is reasonable regarding on its performance comparing to similar product of its genre.
•	Alternative Hypothesis (H1): MechaCar’s price is not reasonable regarding on its performance comparing to similar product of its genre.

Statistical Tests

In order to determine the factors that have a significat impact on the price and to get a clear relationship between the different variables, a multiple linear regression is required.


