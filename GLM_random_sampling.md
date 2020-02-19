---
title: "Simulating Linear Model"
author: "MarceloCS"
date: "19/02/2020"
output: pdf_document
---
# Generating Random Numbers From a Linear Model

```{r}
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x * e
summary(y)
str(y)
plot(x, y)
```

# Generating Random Numbers From a generalized linear model (GLM)

Suppose we want to simulate from a Poissom model where

```{r}
set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x,y)
```

