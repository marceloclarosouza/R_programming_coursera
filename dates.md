---
title: "Dates"
author: "Marcelo"
date: "05/02/2020"
output: pdf_document
---
# Dates in R
Basic examples

```{r}
x = as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))
```

```{r}
x = Sys.time()
x
p = as.POSIXlt(x)##convert de date on a list
names(unclass(p))
p$sec
p$min
p$gmtoff

```
POSIXlt convert date in list
POSIXct convert date in data frame integer





