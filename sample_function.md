---
title: "Sample Function"
author: "MarceloCS"
date: "19/02/2020"
output: pdf_document
---
# Sample function

the sampl function draws randomly from a specific set of (scalar) objects allowing you to sampl from arbitrary distribution

```{r}
set.seed(1)
sample(1:10, 4)
sample(1:10, 4)
sample(letters, 5)
sample(1:10)##permutation
sample(1:10)#no repeated numbers
sample(1:10, replace = TRUE) ##sample with replacement - repeat numbers
```

