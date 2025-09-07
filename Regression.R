install.packages("HistData")
library(HistData)

?Galton
View(Galton)

#We want to model the dependency of Child's height on the parents
attach(Galton)
plot(parent,child)

#Looking at data individually (Discrete unorganised data, it appears to be continuous but is discrete)
hist(parent)
hist(parent,20)
hist(parent,60)

hist(child)
hist(child,20)
hist(child,60)

#Jitter: if it's a discrete value, it is going to vary around that value
#Objective here is to group similar datasets together
plot(jitter(parent,3),jitter(child,3),pch=19,col="orange")

#Correlation
cor(parent,child)

#Linear Regression Model
reslm <- lm(child~parent)
class(reslm)
names(reslm)
plot(reslm) #series of plots

#To plot the regression line
reslm <- lm(child ~ parent)
plot(jitter(parent,3),jitter(child,3),pch=19,col="orange")
lines(parent,reslm$fitted,col="blue",lwd=3)
str(reslm)

#Check R ggplot cheat sheet



