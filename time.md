---
title: "Times"
author: "Marcelo"
date: "05/02/2020"
output: pdf_document
---

# Times in R

See the function strptime
Convert string date time in formated date and time

```{r}
datestring = c("January 10, 2012 10:40", "December 9, 2011 9:10")
x = strptime(datestring, "%B %d %Y %H:%M")#It is not working properly
x
class(x)
```

# Operations on dates and times

```{r}
x = as.Date("2012-01-01")
y = strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
x = as.POSIXlt(x)
x-y
x
y
class(x)
class(y)
```

# Operations with different time zone
```{r}
x = as.Date("2012-03-01")
y = as.Date("2012-02-28")
x-y
x = as.POSIXct("2012-10-25 01:00:00")
y = as.POSIXct("2012-10-25 06:00:00", tz = "GMT")
y-x

```

