# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

- ![](https://github.com/helen3121433/MechaCar_Statistical_Analysis/blob/main/Resources/summary_linear_reg.PNG)

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
    ![]()

    P-value 




    - T-test PSI for each manufacturing lot