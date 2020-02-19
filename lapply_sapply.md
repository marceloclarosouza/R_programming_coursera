---
title: "Alappy and Sapply"
author: "MarceloCS"
date: "12/02/2020"
output: pdf_document
---

http://archive.ics.uci.edu/ml/datasets/Flags

```{r}
cls_list <- lapply(flags, class)
cls_list##print a list of classes. 1 per col
```

```{r}
as.character(cls_list)#print a vector of classes manualy
cls_vect <- sapply(flags,class)# print a class vector with the manoes of each col
cls_vect
```

In general, if the result is a list where every element is of length one, then sapply() returns a vector. If the result is a list where every element is a vector of the same length (> 1), sapply() returns a matrix.

Therefore, if we want to know the total number of countries (in our dataset) with, for example, the color orange on their flag, we can just add up all of the 1s and 0s in the 'orange' column. Try sum(flags$orange) to see this.


```{r}
sum(flags$orange)
flag_colors <- flags[,11:17]
lapply(flag_colors,sum)#list of flags with each color
sapply(flag_colors, sum)#vector of flags with each color
sapply(flag_colors, mean)#percentage

```

```{r}
flag_shapes <- flags[, 19:23]
lapply(flag_shapes, range)#calculate the minimum and maximum

shape_mat <- sapply(flag_shapes, range)#matrix of shapes in the flags
class(shape_mat)
```

the unique() function returns a vector with all duplicate elements removed

```{r}
unique_vals <- lapply(flags, unique)
sapply(unique_vals, length)
sapply(flags, unique)

lapply(unique_vals, function(elem) elem[2])#return a list containing
| the second item from each element of the unique_vals list##The only difference between previous examples and this one is that we are defining and using our own function right in the call to lapply(). Our function has no name and disappears as soon as lapply() is done using it. So-called 'anonymous functions' can be very useful when one of R's built-in functions isn't an option

```


