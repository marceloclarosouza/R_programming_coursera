initial = read.table('datatable.txt', nroes = 100)
classes = supply(inicial, class)
tabAll = read.table("datatable.txt", colClasses = classes)

y = data.frame(a = 1, b = "a")
dput(y)
dput(y, file = "y.R")
now.y = dget("y.R")
now.y

x = "foo"
y = data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R")
rm(x,y)
source("data.R")
y
x
