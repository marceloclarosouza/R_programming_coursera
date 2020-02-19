---
title: "Simulation Random sampling"
author: "MarceloCS"
date: "19/02/2020"
output: pdf_document
---

str can used to check the sturcture of functions and data

#Simulation Random sampling

rnorm
dnorm
pnorm
rpois

use d, r, p, q before the distrinution
d for density
r random sequence
p cummulative distribution
q quantil function

```{r}
dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0 , sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1, lower.taisl = TRUE, log.p = FALSE)
rnorm(n, mean = 0, sd = 1)
```

the use of set.seed() always set the random numer seed when conducting a simulation.

```{r}
set.seed(1)
rnorm(5)#set.seed(1)
rnorm(5)#set.seed(2)
rnorm(5)#set.seed(3)
set.seed(1)
rnorm(5)

```




