---
title: "Debugging"
author: "MarceloCS"
date: "11/02/2020"
output: pdf_document
---
If x = NA error message appears
```{r}
printmessage <- function(x){
  if(x >0)
    print("x is grater than zero")
  else {
    print("x is less thanor equal zero")
  }
  invisible(x)#"similar to load variable without printing
}

printmessage(10)
printmessage(NA)
```


usin is.na(x) you return a print instead of an error message
```{r}
printmessage2 <- function(x) {
  if (is.na(x))
    print("x is a missing value")
  else if(x > 0)
    print("x is greater than zero")
  else
    print("x is less than or equal zero")
  
  invisible(x)
}

printmessage2(NA)
```


traceback : prints out the function call stack an error occurs

debug : flags a function for "debug" mode which allows you to step through execution of a function one line at a time

browser : suspends the execution of a function wherever it is called and outs the function in debug mode

trace : allows you to insert debugging code into a function a specific places

recover : allows youto modify the erro behavior so that can browse the function call stack
 

```{r}
lm(y - x)
traceback()
```

```{r}
debug(lm)
lm(y -x)
```


```{r}
options(error = recover)
read.csv("nesfile")
```

















