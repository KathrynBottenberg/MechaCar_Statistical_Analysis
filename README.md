# MechaCar_Statistical_Analysis
## Summary
AutosRUs has an new model in production, the MechaCar, and is experiencing some issues in manufacturing stage. This analysis is to review the production data and look for insights for the manufacturing team. </br>
This analysis will address the following:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Part 1: Linear Regression to Predict MPG
![image]()

**- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?** </br>
There are two variables from the data set which provide a non-random amount of variance to the MPG values: vehicle length and ground clearance. The other variables: vehicle weight, spoiler andles, and AWD do not appear to have an effect on the MPG for the MechaCar. 

**- Is the slope of the linear model considered to be zero? Why or why not?** </br>
If the p-value, or otherwise known as the significance level is found to be below 0.05, then we can conclude the slope of the linear model to have a slope that is not zero. The p-value for this data set is 5.35e-11, which indicates there is sufficient evidence to reject our null hypothesis and the slope of this linear model is not zero.

**- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?** </br>
When determining if the linear model is effective, we can look at the Adjusted R-squared value. The closer the Adjusted R-squared value is to 1, the better the linear model is at prectiting effectiveness. In this analysis, our Adjusted R-squared is 0.6825. This means our linear model is effective at correctly predicting the MPG of MechaCar 68.25% of the time. Statistically speaking, we can say this model is effective at predicting the MPG of the MechaCar. Further testing could be done by elliminating the variables that do not appear to effect the MPG of the vehicle and look at the predictability of the new linear model with only vehicle length and ground clearance taken into account. 

## Part 2: Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must **not exceed 100 pounds per square inch**. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
**All manufacturing lots in total** </br>
The variance for the suspension coils accross all lots is 62.29356 pounds per square inch. This variance is well below the 100 pounds per square inch requirement and therefore meet the design specifications. 
**Looking into each manufacturing lot individually** </br>
Lots 1 and 2 each have a variance of 0.9795918 and 7.4693878, respectively. Therefore, both lots 1 and 2 are far below the max varience level of 100 pounds per square inch. Lot 3 however, has a varience level of 170.2861224, which exceeds the design specfications needed. 

## Part 3: T-Tests on Suspension Coils
briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

## Part 4: Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:

- What metric or metrics are you going to test?

- What is the null hypothesis or alternative hypothesis?

- What statistical test would you use to test the hypothesis? And why?

- What data is needed to run the statistical test?

