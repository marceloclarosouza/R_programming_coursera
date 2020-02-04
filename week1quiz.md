---
title: "Week 1Quiz"
author: "MarceloCS"
date: "04/02/2020"
output: pdf_document


Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this?

```{r}
x = c(17, 14, 4, 5, 13, 12, 10)
x[x>10]=4
```

Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
```{r}
data[c(1,2)]
```

How many observations (i.e. rows) are in this data frame?
```{r}
nrows(data)
```

Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
```{r}
tail(data, 2)
```

What is the value of Ozone in the 47th row?
```{r}
data[47, Ozone]
```

How many missing values are in the Ozone column of this data frame?
```{r}
data=read.csv('hw1_data.csv')##https://d396qusza40orc.cloudfront.net/rprog/data/quiz1_data.zip

sub=subset(data, is.na(Ozone))
nrows(sub)
```

What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
```{r}
sub2 = subset(data, !is.na(Ozone), select=Ozone)
apply(sub2, 2, mean)
```

Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
```{r}
sub3 = subset(data, Ozone > 31 & Temp > 90, select = Solar.R)
apply(sub3, 2, mean)
```

What is the mean of "Temp" when "Month" is equal to 5?
```{r}
sub4 = subset(data, Month ==5, select = Temp)
apply(sub4, 2 mean)
```

What was the maximum ozone value in the month of May (i.e. Month = 5)?
```{r}
sub5=subset(data, Month ==5, select=Ozone)
apply(sub5, 2, max)
```

