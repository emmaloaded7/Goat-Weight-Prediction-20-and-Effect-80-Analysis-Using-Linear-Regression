#Importing of file
dataset <- read.csv(file.choose())

#Dimension of dataset
dim(dataset)

#Dataset variables
names(dataset)

#Calling for 6 rows from the entire dataset
head(dataset)

#Converting to Categorical variable
dataset$Sex <- as.factor(dataset$Sex)

#Statistical analysis of the dataset
summary(dataset)

#Scatter plot to see the relationship between Weight and Height
plot(dataset$Height, dataset$Weight)

#Correlation analysis to see the relationship
cor(dataset$Height, dataset$Weight)
#correlation = 0.88 which implies they both have a strong relationship

#Simple linear regression
model1 <- lm(Weight ~ Height, data = dataset)
summary(model1)
#When the Height increase by 1cm The weight of the goat increase by 0.89kg
#p-value < 0.05 which makes it significant
#R-squared = 0.78 Which reveal approximately 78% variation of the weight

#Multi Linear regression adjusting for sex
model2 <- lm(Weight ~ Height + Sex, data = dataset)
summary(model2)
#Holding Sex constant,When the Height increase by 1cm The weight of the goat increase by 0.86kg
#After Adjusting for sex, Male goat weight approximately 1.34kg more than Female goat
#p-value < 0.05 which makes it significant
#R-squared = 0.79 Which reveal approximately 79% variation of the weight

model3 <- lm(Weight ~ Height + Sex + Age, data = dataset)
summary(model3)
#Holding Sex constant,When the Height increase by 1cm The weight of the goat increase by 0.48kg
#After Adjusting for sex, Male goat weigh approximately 2.53kg more than Female goat
#When Age increase by 1 the goat weigh 3.69kg
#p-value < 0.05 which makes it significant

model4 <- lm(Weight ~ Height + Sex + Age * Sex,
             data = dataset)
summary(model4)

summary(model1)$r.squared

summary(model2)$r.squared

summary(model3)$r.squared

anova(model1, model2, model3, model4)

plot(model3)

hist(residuals(model3))

qqnorm(residuals(model3))
qqline(residuals(model3))

#Predict New Values
newWeight <- data.frame(
  Height = 78,
  Sex = factor("1",
               levels = levels(dataset$Sex)),
  Age = 3
)

predict(model3, newWeight)

