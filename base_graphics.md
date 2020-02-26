---
title: "Base_graphics"
author: "MarceloCS"
date: "26/02/2020"
output: pdf_document
---
the more advanced portions of graphics in R are in lattice, ggplot2 and ggvis packages

```{r}
data(cars)
head(cars)
```

 Before plotting, it is always a good idea to get a sense of the data. Key R commands for doing so include, dim(), names(), head(), tail() and summary().
 do not type plot(cars$speed, cars$dist), although that will work. Instead, use plot(x = cars$speed, y = cars$dist).
 
 Scatterplots
 
```{r}
plot(x = cars$speed, y = cars$dist)
plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")
plot(cars, main = "My Plot")#main Title
plot(cars, sub = "My Plot Subtitle")#plot subtitle
plot(cars, col = 2)#plot the dots in red
plot(cars, xlim = c(10, 15))#limit of the x axis
plot(cars, pch = 2)#pch manges the shape of the dots

```
 
 
 Box plots
 
```{r}
data(mtcars)
boxplot(formula = mpg ~ cyl, data = mtcars)

```
 
 
 
 