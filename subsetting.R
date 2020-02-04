  x = c("a", "b", "c", "c", "a")
  x[1]
  x[2]
  x[1:4]
  x[x > "a"]
  u = x > "a"
  u
  x[u]
  
  #Subsetting Lists
  x = list(foo = 1:4, bar = 0.6)
  x[1]#retorna o foo e os valores - returns a list
  x[[1]]#retorna somente os valores
  x$bar
  x[["bar"]]
  x["bar"]
  
  # to extract multiple elements on a list use single []
  x = list(foo = 1:4, bar = 0.6, bas = "hello")
  x[c(1,3)]
  
  x = list(foo = 1:4, bar = 0.6, baz = "hello")
  name="foo"
  x[[name]] #compute index for "foo"
  x$name##element "name doesn't exist
  x$foo # element "foo" does 
  
  x = list(a = list(10, 12, 14), b = c(3.14, 2.81))
  x[[c(1,3)]]
  x[[1]][[3]]
  
  x[[c(2,1)]]
  x[[2]][[1]]
  
  ##Subsetting a matrix
  x = matrix(1:6, 2, 3)
  x
  x[1,2]
  x[2,1]
  x[1,]#imprime a linha
  x[,2]#imprime a coluna
  
  x = matrix(1:6, 2, 3)
  x[1,2]#return a value in one dimenstio
  x[1,2, drop = FALSE]#return a matrix em double dimensions
  
  x = matrix(1:6, 2, 3)
  x[1,]#return the line on a vector
  x[1,, drop = FALSE]#return the line on a matrix
  
  
  ##partial matching
  x = list(aardvark = 1:5)
  x$a
  x[["a"]]
  x[["a", exact = FALSE]]
  
  
  ###Removing missing values NA
  x = c(1, 2, NA, 4, NA, 5)
  bad = is.na(x)
  x[!bad]## !é p negar o bad
  
  x = c(1,2,NA,4,NA,5)
  y = c("a", "b", NA, "d", NA, "f")
  good = complete.cases(x, y)
  good
  x[good]
  y[good]
  
  
  #remover as linhas que contem NA
  airquality[1:6, ]
  good = complete.cases(airquality)
  airquality[good, ][1:6, ]
  
  