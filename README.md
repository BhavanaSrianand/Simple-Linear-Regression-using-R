# Simple-Linear-Regression-using-R
Using Galton's dataset, we analyse how a childs height (y variable) depends on the parents height (x variable).

<img width="193" height="262" alt="image" src="https://github.com/user-attachments/assets/97190fd4-a6ca-4dea-9010-eccecf7e99dc" />


# Dataset (Galton)

We have total 928 observations from the United States. 

x variable: Parents Height
y variable: Childs Height


Level: Basic

Author: Bhavana Srianand

Technique: Prof. Susan Holmes 


# Model Setup


<img width="225" height="225" alt="image" src="https://github.com/user-attachments/assets/3a375b61-fe8f-4af9-85d5-7d3cb55c984a" />


<img width="194" height="260" alt="image" src="https://github.com/user-attachments/assets/8d79d355-8eb2-4c3c-91d4-47e91a6159b8" />


Equation base used:  y = Bo + B1 x


Here,


Child's Height (y) = Bo + B1 (Parents Height)


Bo: Intercept terms (the value of y when x = 0)


B1: Slope



# Project Objective

To draw parallels between the Parent's and the Child's height using simple linear regression.


# Coding

Import and attach the data

 <pre> ```r 
install.packages("HistData")
library(HistData)

?Galton
View(Galton)

#We want to model the dependency of Child's height on the parents
attach(Galton)
plot(parent,child)
``` </pre>

<img width="1345" height="1342" alt="image" src="https://github.com/user-attachments/assets/22b9c810-592c-4efb-b449-20b3d57290e5" />

Assessing the parameters individually

 <pre> ```r 
#Looking at data individually (Discrete unorganised data, it appears to be continuous but is discrete)
hist(parent)
hist(parent,20)
hist(parent,60)
``` </pre>

<img width="1345" height="1342" alt="image" src="https://github.com/user-attachments/assets/7398ab1e-aebb-4248-8fb1-0256aff4f9ed" />

  
  <pre> ```r 
hist(child)
hist(child,20)
hist(child,60)
    ``` </pre>

<img width="1345" height="1342" alt="image" src="https://github.com/user-attachments/assets/f5a8a53d-db2e-45db-8f8a-9dc5a7a6278f" />


# Jitter

 <pre> ```r 
#Jitter: if it's a discrete value, it is going to vary around that value
#Objective here is to group similar datasets together
plot(jitter(parent,3),jitter(child,3),pch=19,col="orange")
  ``` </pre>

<img width="1345" height="1342" alt="image" src="https://github.com/user-attachments/assets/099d5ef0-1cf2-4fc0-b553-6c746925dc28" />


# Correlation

<pre> ```r 
#Correlation
cor(parent,child)
 ``` </pre>

# Linear Regression Model

<pre> ```r 
#Linear Regression Model
reslm <- lm(child~parent)
reslm
class(reslm)
names(reslm)
plot(reslm) #series of plots

   ``` </pre>

<img width="1345" height="1342" alt="image" src="https://github.com/user-attachments/assets/e0d6b4b4-e655-4527-b819-0d2dfe35b138" />


<img width="1345" height="1342" alt="image" src="https://github.com/user-attachments/assets/16074ce3-c553-4c61-ae57-75e31d71973b" />


<img width="1345" height="1342" alt="image" src="https://github.com/user-attachments/assets/bb5d99cd-0cb6-4e68-a75a-b6730a054f2b" />


<img width="1345" height="1342" alt="image" src="https://github.com/user-attachments/assets/9d408407-55d2-4a1b-a364-b294d1a94c13" />

<pre> ```r 

#To plot the regression line
reslm <- lm(child ~ parent)
plot(jitter(parent,3),jitter(child,3),pch=19,col="orange")

   ``` </pre>

 <img width="1345" height="1342" alt="image" src="https://github.com/user-attachments/assets/79a771e8-8e8f-40ee-b434-43c0ccbe313e" />

   
 <pre> ```r 
lines(parent,reslm$fitted,col="blue",lwd=3)
str(reslm)

   ``` </pre>

 <img width="1345" height="1342" alt="image" src="https://github.com/user-attachments/assets/7f117672-4475-4c8c-8bdc-8e17c14a6adc" />

 

   

# Conclusion   

1. There is 45% chance that a child's height depends on the parents height
2. Considering all other factors constant there is 23 % chance that a child's height is independent of the parents height.
3. A unit change in parent height changes the child's height by 0.64 ~



 # Author - Bhavana Srianand

 Thank you very much for visiting my page. Looking forward to publishing more such projects!




