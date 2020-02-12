---
title: "vapply_tapply"
author: "MarceloCS"
date: "12/02/2020"
output: pdf_document
---
Whereas sapply() tries to 'guess' the correct format of the result, vapply() allows you to specify it explicitly.

vapply it is better than spply for large dataset. It is also faster. But, sapply save typpings.

```{r}
vapply(flags, class, character(1)) # result a character vector of column classes similar to sapply(flags, class)
```


use tapply() to split your data into groups based on the value of some variable, then apply a function to each group
```{r}
tapply(flags$animate, flags$landmass, mean)#proportion of animate flags per region

 tapply(flags$population, flags$red, summary)
 
 tapply(flags$population, flags$landmass, summary)#population per region
```

