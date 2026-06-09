# Goat Weight Prediction and Effect Analysis Using Linear Regression
## Project Overview

This project investigates the relationship between goat Weight and several biological characteristics, 
including Height, Age, and Sex. Multiple linear regression models were developed to determine which factors 
are associated with goat weight and to evaluate how well these variables explain variations in weight.

The analysis was conducted in R using exploratory data analysis, correlation analysis, linear regression, model comparison, 
diagnostic checks, and prediction.

## Objectives

The objectives of this project were to:

* Explore the structure and characteristics of the goat dataset.
* Examine the relationship between Height and Weight.
* Determine whether Sex influences Weight.
* Assess the contribution of Age to Weight after controlling for Height and Sex.
* Compare multiple regression models to identify the most informative model.
* Validate model assumptions using diagnostic plots.
* Predict the weight of a new goat using the final regression model.

## Dataset Description
Goat-Weight-Prediction-20-and-Effect-80-Analysis-Using-Linear-Regression[https://github.com/emmaloaded7/Goat-Weight-Prediction-20-and-Effect-80-Analysis-Using-Linear-Regression/blob/master/goat_dataset.csv]

## The dataset contains measurements collected from goats.

* Variables
* Variable	Description
* Body weight of the goat (kg)
* Height of the goat (cm)
* Age of the goat (years)
* Sex of the goat (Male/Female)

## Methodology
1. Data Import and Exploration

The dataset was imported into R and inspected using:

dim(dataset)
names(dataset)
head(dataset)
summary(dataset)

These functions were used to understand the dimensions, variable names, sample observations, and summary statistics.

2. Data Preparation

The Sex variable was converted into a categorical variable:

dataset$Sex <- as.factor(dataset$Sex)

This allows R to correctly treat Sex as a factor during regression analysis.

3. Exploratory Data Analysis

A scatter plot was created to visualize the relationship between Height and Weight:

plot(dataset$Height, dataset$Weight)

The correlation coefficient was calculated:

cor(dataset$Height, dataset$Weight)

A correlation of approximately 0.88 indicated a strong positive relationship between Height and Weight

4. Regression Modeling was done which includes:
   i.   model1
   ii.  model2
   iii. model3
   iv.  model4
5. Model Comparison
   anova(model1, model2, model3, model4)

6. Model Diagnostics
7. The prediction
   The final model was used to predict the weight of a new goat:

## Results

### Key findings from the analysis include:

* Height showed a strong positive relationship with Weight.
* The correlation between Height and Weight was approximately 0.88.
* Male goats generally weighed more than female goats after adjusting for Height and Age.
* Age was positively associated with Weight.
* The model including Height, Sex, and Age explained the largest proportion of variation in Weight.
* Regression diagnostics indicated that the model assumptions were reasonably satisfied.

## Conclusion

This study demonstrated that Height, Age, and Sex are important predictors of goat weight.

Among the models evaluated, the multiple linear regression model containing Height, Age, and Sex
provided the best balance between explanatory power and interpretability. 
The results suggest that taller and older goats tend to weigh more, 
and that sex also contributes to differences in weight.

The final model can be used both to understand factors associated with goat growth and to predict the weight
of goats based on observable characteristics.

## Software Used
* R Project for Statistical Computing
* RStudio IDE

## Author

### Ometoro Emmanuel

Project: Goat Weight Analysis Using Linear Regression in R
