x = factor(c("yes", "yes", "no", "yes", "no"))
x
table(x)
unclass(x)
attr(x,"levels")###aparece por ordem alfabética no yes

x = factor(c("yes", "yes", "no", "yes", "no"), levels = c("yes", "no"))## yes aparece antes do no
x
