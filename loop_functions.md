---
title: "lapply"
author: "MarceloCS"
date: "11/02/2020"
output: pdf_document
---
#      LOOP FUNCTIONS


# lapply
loop over a **list** and evaluate a function on each element
split

```{r}
x <- list(a = 1:5, b =rnorm(10))
lapply(x, mean)
```
```{r}
x <- list(a =1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)
```
```{r}
x <- 1:4
lapply(x, runif)
```

```{r}
x<- 1:4
lapply(x, runif, min =0, max = 10)
```


# matrices
```{r}
x<- list(a = matrix(1:4, 2,2), b = matrix(1:6, 3,2))
x
lapply(x, function(elt) elt[,1])
```


# sapply
returns a **vector**

```{r}
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20,1), d = rnorm(100, 5))
lapply(x, mean)#returns a list
sapply(x, mean)#returns a vector
```

# apply

```{r}
x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean)## preserv the col
apply(x, 1, sum)## preserv the rows
```

col/row sums and means

```{r}
rowSums = apply(x, 1, sum)
rowMeans = apply(x, 1, mean)
colSums = apply(x, 2, sum)
colMeans = apply(x, 2, mean)
```

quanties of the rows of a matrix

```{r}
x <- matrix(rnorm(200), 20,10)
apply(x, 1, quantile, probs =c(0.25, 0.75))
```

Averege matrix in an array

```{r}
a <- array(rnorm(2*2*10), c(2,2,10))
apply(a, c(1,2), mean)
rowMeans(a, dim = 2)
```


# mapply

apply multiple functions in parallel

```{r}
list(rep(1, 4), rep(2,3), rep(3,2), rep(4,1))
#instead we can do
mapply(rep, 1:4, 4:1)
```

Vectorizing a function
```{r}
noise <- function(n, mean, sd){
        rnorm(n, mean,sd)
}
noise(5,1,2)
noise(1:5, 1:5,2)

mapply(noise, 1:5, 1:5, 2)#vectorizing
list(noise(1,1,2), noise(2,2,2), noise(3,3,2), noise(4,4,2), noise(5,5,2))#similar, but longer than mapply
```

# tapply

is used to apply a function over subsets of a vector with same length

take a group means
```{r}
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
f
tapply(x, f, mean)
```


if you don't simplify your results the going out will be a **list** instead of a **vector**

```{r}
tapply(x, f, mean, simplify = F)
```


find group ranges

```{r}
tapply(x, f, range)
```

# Split
 split takes a vector or other objects and splits it into groups determined by a factor or list of factors
 
```{r}
x <- c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3, 10)
split(x, f)#split the vector into a list
```
 
```{r}
x <- c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3, 10)
lapply(split(x,f), mean)
tapply(x,f,mean)#in this case the use of tapply it is similar lapply with split
```


# Splitting a data frame

```{r}
library(datasets)
head(airquality)

```

Split the data frame to calculate the mean values per month

```{r}
library(datasets)
head(airquality)
s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")]))
sapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")]))#organizing the data on a matrix
sapply(s, function(x) colMeans(x[,c("Ozone", "Solar.R", "Wind")], na.rm = TRUE))##removendo os NA
```

# Splitting on more than one level

```{r}
x <- rnorm(10)
f1 <- gl(2, 5)
f2 <- gl(5, 2)
f1
f2
interaction(f1,f2)
str(split(x, list(f1, f2)))
str(split(x, list(f1, f2), drop = TRUE))
```













