m = matrix(1:6, nrow = 2, ncol = 3)
m

x = 1:10
dim(x)=c(2,5)#convert the vector x on a matrix  
x

a = 1:3
b = 1:6
ab_matrix =cbind(a,b)#cria uma matrix em coluna
ab_matrix
ab_matrix2 = rbind(a,b)#cria uma matrix em linha
ab_matrix2
