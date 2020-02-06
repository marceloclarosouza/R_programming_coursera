---
title: "control structures"
output: pdf_document
---
# If, else condition

if (condition){
  #do something
  
} else if (condition){
  #do something
  
}else {
  #do something
}

# For loop

x = c("a", "b", "c". "d")

for (i in 1:4){
  print(x[i])
}

for (i in seq_along(x)){
  print(x[i])
}

for (letter in x){
  print(letter)
}

for (i in 1:4) print(x[i]) ###usar com cuidado.


# Nested for loops (um loop dentro do outro)

  x = matrix(1:6, 2,3)
  
  for (i in seq_len(nrow(x))){
    for (j in seq_len(ncol(x))){
      print(x[i,j])
    }
  }
  

# while loops

count = 0
while(count <10){
  print(count)
  count = count +1
}

