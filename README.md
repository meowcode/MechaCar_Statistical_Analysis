# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![Linear Regression](https://user-images.githubusercontent.com/85198012/190513566-957c3d2e-5305-44a9-a980-4624145f85da.png)

The variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset are ground_clearance and mpg.
The slope of the linear model is considered to be zero because the p-value is 6.712e-11.
This linear model predicts mpg of MechaCar prototypes effectively because the r-squared is above 60% which indicates more variability.

## Summary Statistics on Suspension Coils
![Total Summary](https://user-images.githubusercontent.com/85198012/190515917-5a750717-2d73-475f-9b10-187903358a1a.png)
![Lot Summary](https://user-images.githubusercontent.com/85198012/190515934-d221a4e3-73b9-4bfb-a8b5-f13fd456e34d.png)

Based on the results, the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meet this design specification for all manufacturing lots in total but does not meet each lot individually, Lot 3 has a much higher variance than Lot 1 and 2.

## T-Tests on Suspension Coils
![Lot1](https://user-images.githubusercontent.com/85198012/190516830-71367ba0-7ce3-40d0-b0ec-b04ffad3d557.png)

In Lot1, the t-value is 0 since the p-value is 1 and is not less than .05, we fail to reject the null hypothesis.

![Lo2](https://user-images.githubusercontent.com/85198012/190516848-dfd08c23-f94a-467e-8b19-cb0f7aaf623e.png)

In Lot2, the t-value is 0.51745 since the p-value is .6072 and is not less than .05, we fail to reject the null hypothesis.

![Lot3](https://user-images.githubusercontent.com/85198012/190516855-36b43d9f-2774-405c-aa3d-f157a8fa5c1a.png)

In Lot3, the t-value is -2.0916 since the p-value is 0.04168 and is less than .05, we fail to reject the null hypothesis.

## Study Design: MechaCar vs Competition

Another statistical study that can quantify how the MechaCar performs against the competition is by finding out the maintance cost of vehicles and fuel costs. 
The null hypothesis is "If the vehicle maintainance is higher than there will be no difference in fuel costs" and the alternative hypothesis is "If the vehicle maintaince is higher than the fuel cost will be higher". The statistical test that would be use to test the hypothesis is a two sample t-test because it can show if there is a statistical difference between maintance and fuel costs. The data needed to run the statistical test are maintaince and fuel costs.
