# MechaCar_Statistical_Analysis

## Overview
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

 ![](https://github.com/helen3121433/MechaCar_Statistical_Analysis/blob/main/Resources/summary_linear_reg.PNG)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - As we can see in the coefficients table, vehicle_length has p value as 2.60e-12 indicated that vehicle_length and ground_clearance are two variables that provides a non-random amount of variance to the mpg values in the dataset. 

- Is the slope of the linear model considered to be zero? Why or why not?
    - The p-value of the modle is at 5.35e-11, which is lower than significance level (0.05) and even the extreme significance level (0.001), which means null hypothesis is successful rejected. Conclued that slope of the linear model cannot be considered to be zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    - For our linear regression model,multiple R-squared value is 0.7149, which means that roughly 71.4% of the variability of our dependent variable is explained using this linear model. Conclues that this linear model predict mpg of MechaCar prototypes effectively.


## Summary Statistics on Suspension Coils
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
    - Total Summary of Suspension Coils
    ![](https://github.com/helen3121433/MechaCar_Statistical_Analysis/blob/main/Resources/suspension_total_summary.PNG)
        
      The overal variance is at 62.29356 pounds per square inches, which does not exceed the design specifications (100 pounds per square inch).

    - Summary of Suspension coils per lot
    ![](https://github.com/helen3121433/MechaCar_Statistical_Analysis/blob/main/Resources/suspension_lot_summary.PNG)
    
      Lot 1 and Lot 2 both meet the design specifications, however Lot 3 exceed the design specifications by 70.29 pounds oer square inch, which i ntotal 170.29 ounds per square inch. Lot 3 does not meet the design specification.

## T-Tests on Suspension Coils
- Use t.test() funciton to determine if PSI across all manufacturing lot, and each manufacturing lot are statistcally different from the population mean of 1500 pounds per square inch. Used one sample t-test.

    - T-test PSI across all manufacturing lots
    ![](https://github.com/helen3121433/MechaCar_Statistical_Analysis/blob/main/Resources/test_overall.PNG)

      P-value of overall manufacturing lots is 0.06028,does not reach to normal significance level(0.05). Therfore fail to rejected the null hypothesis, which they are not statistcally different from the population mean of 1500 pounds per square inch.


    - T-test PSI for each manufacturing lot: Lot 1
    ![](https://github.com/helen3121433/MechaCar_Statistical_Analysis/blob/main/Resources/lot1_test.PNG)

      P-value of Lot 1 is 1, which way higher than normal significance level(0.05), thus fail to rejected the null hypothesis. Concludes, Lot 1 is not statistcally different from the population mean of 1500 pounds per square inch.
    
    - T-test PSI for each manufacturing lot: Lot 2
    ![](https://github.com/helen3121433/MechaCar_Statistical_Analysis/blob/main/Resources/lot2_test.PNG)

      P-value of Lot 2 is 0.6072, which is way higher than normal signifcance level, thus fail to rejected the null hypothesis. Concludes, Lot 2 is not statistcally different from the population mean of 1500 pounds per square inch.

    - T-test PSI for each manufacturing lot: Lot 3
    ![](https://github.com/helen3121433/MechaCar_Statistical_Analysis/blob/main/Resources/lot3_test.PNG)
      
      P-value of Lot 3 is 0.04168, which lower than the normal significance level, thus success to rejected the null hypothesis. Concludes, Lot 3 is staticstically different from the population mean of 1500 pounds per square inch.

## Study Design: MechaCar vs Competition
- Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. 

    - To consumers who wants a car for daily commute between work and home, city or highway fuel efficiency  and maintenance cost will be one of the interest metric to consumer. 

    - What metric or metrics are you going to test?
        - Use mpg data on city/highways to test the fuel eiffciency.
        - Use annual cost for maintenance to test the maintenance cost.

    - What is the null hypothesis or alternative hypothesis?
        - Null hypythesis (H0): There are no different of fuel efficiency and maintenance cost between MechaCar and Competitor.

        - Alternative hypothesis (Ha): There is different of fuel efficiency and maintenance cost between MechaCar and Competitor. MechaCar has better/worse fuel efficiency, and more valuable on maintence cost/more exepensive on maintenance cost.

    - What statistical test would you use to test the hypothesis? And why?
        - Use two-sample t-test to test the hypothesis, because we want to see if there is a statistical difference between the distribution means from two samples, MechaCar and Competitor
        - Also use summarize() function to get summary of fuel efficiency and maintain cost.

    - What data is needed to run the statistical test?
        - Data of MechaCar city mpg and Competitor city mpg
        - Data of MechaCar highway mpg and Competitor highway mpg
        - Data of MechaCar annual maintain cost over first 10 years of car's life and competitor annual maintain cost over first 10 years of car's life. Then we can use summarize() to get mean and median cost.
        - Data of maintaince cost of common car issues for both MechaCar and Competitor
        - Data of # of common issues frequency for both MechaCar and competitor.
