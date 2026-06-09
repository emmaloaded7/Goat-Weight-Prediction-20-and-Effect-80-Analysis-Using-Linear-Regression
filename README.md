## Goat Weight Prediction and Effect Analysis Using Linear Regression
# Project Overview

This project investigates the relationship between goat Weight and several biological characteristics, 
including Height, Age, and Sex. Multiple linear regression models were developed to determine which factors 
are associated with goat weight and to evaluate how well these variables explain variations in weight.

The analysis was conducted in R using exploratory data analysis, correlation analysis, linear regression, model comparison, 
diagnostic checks, and prediction.

# Objectives

The objectives of this project were to:

* Explore the structure and characteristics of the goat dataset.
* Examine the relationship between Height and Weight.
* Determine whether Sex influences Weight.
* Assess the contribution of Age to Weight after controlling for Height and Sex.
* Compare multiple regression models to identify the most informative model.
* Validate model assumptions using diagnostic plots.
* Predict the weight of a new goat using the final regression model.

# Dataset Description
Goat-Weight-Prediction-20-and-Effect-80-Analysis-Using-Linear-Regression[https://github.com/emmaloaded7/Goat-Weight-Prediction-20-and-Effect-80-Analysis-Using-Linear-Regression/blob/master/goat_dataset.csv]

# The dataset contains measurements collected from goats.

* Variables
* Variable	Description
* Body weight of the goat (kg)
* Height of the goat (cm)
* Age of the goat (years)
* Sex of the goat (Male/Female)

# Methodology
1. Data Import and Exploration

The dataset was imported into R and inspected using:

dim(dataset)
names(dataset)
head(dataset)
summary(dataset)

These functions were used to understand the dimensions, variable names, sample observations, and summary statistics.
