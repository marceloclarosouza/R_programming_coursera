---
title: "Looking At data"
author: "MarceloCS"
date: "26/02/2020"
output: pdf_document
---
# Looking At Data

```{r}
http://plants.usda.gov/adv_search.html
ls()# to list the variables in your workspace
class(plants)#structure of the data
dim(plants)# return the number of rows and cols
nrow(plants)#return the number of rows
ncol(plants)#return the number of cols
object.size(plants)#return the space the dataset is occupying in memory
names(plants)#returns a vector with the variable names
head(plants)
tail(plants)
str(plants)#the most useful and concise function for understandingthe structure of your data
```

