---
title: "Quiz week 3"
author: "MarceloCS"
date: "12/02/2020"
output: pdf_document
---
1 - Take a look at the 'iris' dataset that comes with R. The data can be loaded with the code: A description of the dataset can be found by running. There will be an object called 'iris' in your workspace. In this dataset, what is the mean of 'Sepal.Length' for the species virginica? Please round your answer to the nearest whole number.

```{r}
library(iris)
data(iris)
tapply(iris$Sepal.Length, iris$Species, mean)

```

2 - Continuing with the 'iris' dataset from the previous Question, what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?

```{r}
apply(iris[,1:4], 2, mean)
```

3 - Load the 'mtcars' dataset in R with the following code.There will be an object names 'mtcars' in your workspace. You can find some information about the dataset by running. How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)? Select all that apply.

```{r}
library(datasets)
data(mtcars)
?mtcars
tapply(mtcars$mpg, mtcars$cyl, mean)


```

4 - Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?

R = 127

5 - If you run "debug(ls)", what happens when you next call the 'ls' function?
R - Execution of "ls" will suspend at the beginning of the function and you will be in the browser.

