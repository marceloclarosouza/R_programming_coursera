---
title: "Simulation"
author: "MarceloCS"
date: "26/02/2020"
output: pdf_document
---

# Simulation - Random samples and permutations

```{r}
sample()#takes a sample of the specified size from the elements of x using either with or without replacement.
sample(1:6, 4, replace =TRUE)#Let's simulate rolling four six-sided
sample(1:20, 10)#without replacement
LETTERS
sample(LETTERS)#The sample() function can also be used to permute, or rearrange, the elements of a vecto
```

suppose we want to simulate 100 flips of an unfair two-sided coin. This particular coin has a 0.3 probability of landing 'tails' and a 0.7 probability of landing 'heads'.Use sample() to draw a sample of size 100 from the vector c(0,1), with replacement. Since the coin is unfair, we must attach specific probabilities to the values 0 (tails) and 1 (heads) with a fourth argument, prob = c(0.3, 0.7)


```{r}
flips <- sample(c(0,1), 100, prob = c(0.3, 0.7), replace = TRUE)
```

A coin flip is a binary outcome (0 or 1) and we are performing 100 independent trials (coin flips), so we can use rbinom() to simulate a binomial random variable. Pull up the documentation for rbinom() using ?rbinom

Each probability distribution in R has an r*** function (for "random"), a d*** function (for "density"), a p*** (for "probability"), and q*** (for "quantile")

A **binomial random variable** represents the number of 'successes' (heads) in a given number of independent 'trials' (coin flips). Therefore, we can generate a single random variable that represents the number of heads in 100 flips of our unfair coin using rbinom(1, size = 100, prob = 0.7). Note that you only specify the probability of 'success' (heads) and NOT the probability of 'failure' (tails).

```{r}
rbinom(n = 1, size = 100, prob = 0.7)
flips <- rbinom(n = 100, size 1, prob = 0.7)
```

The **standard normal distribution** has mean 0 and standard deviation 1. As you can see under the 'Usage' section in the documentation, the default values for the 'mean' and 'sd'arguments to rnorm() are 0 and 1, respectively

```{r}
rnorm(10)
rnorm(10, mean = 100, sd = 25)#generate 10 normal distributed number with mean 100 and sd = 25
```

what if we want to simulate 100 *groups* of random numbers, each containing 5 values generated from a **Poisson distribution** with mean 10?

```{r}
rpois(n = 5, lambda = 10)#Generate 5 random values from a Poisson distribution with mean 10
my_pois <- replicate(100, rpois(5, 10))# replicate performs this operation 100 times
cm <- colMeans(my_pois)#means of the cols
hist(cm)#plot the histogram of cm
```


All of the standard probability distributions are built into R, including **exponential (rexp()), chi-squared (rchisq()), gamma (rgamma()), ....**









