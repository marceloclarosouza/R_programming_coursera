---
title: "R_profiler"
author: "MarceloCS"
date: "19/02/2020"
output: pdf_document
---
# Optimize the code

system.time() takes an arbitrary R expression as input and returns the amount of time takento evaluate the expression

multi-threaded BLAS libraries (MKL)

parallel processing via the **parallel** package

```{r}
system.time({
        n <- 1000
        r <- numeric(n)
        for (i in 1:n){
                x <-rnorm(n)
                r[i] <- mean(x)
        }
})
```

# The Rprof() function starts the profiler in R

summaryRprof() function summarizes the outpout from Rprof() (otherwise it's not readable)
**Do not** use *sytem.time()* and *Rptof()* together

```{r}
## lm(y ~x)
sample.interval = 10000
```

by.total()
by.self() ## it better then by.total since this function analyse step by step the time of each section of your code





















