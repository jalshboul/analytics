#Data Strcutures in R

#vectors ----

x = 1:10
y = 11:20
z = c(x,y)
class (z)
a = letters[1:20]
b = letters[10:1]
class (a)
result = c(T, FALSE, TRUE, F)
class(result)
  #accessing elements
series = seq(0,99, by=11)
series [2:5]
series[]
length(series)
series [-(length(series)-2)]

random = sample(50)
random[]
sort(random)
sort(random[-c(3,5)])
sort(random, decreasing=T)
rev(random)
random[random>30 & random <40]
sum(random[random>30 & random <40])
random[2:10] = 99
random
random[random>30 & random <40] = 999
random
chosen = random[1:4];chosen
1:5
x = seq(1,5,length.out = 15)
x
x = NULL
x

?rnorm
x1 = rnorm(10000000,50,1)
plot(density(x))
x2 = rexp(1000000,1)
plot(density(x))
x3 = rpois(100000,2.3)
plot (density(x))
hist(x1)
hist(x1, freq = F)
lines(density(x1),col = 3)

#matrix ----

100:111
length(100:111)
m1 = matrix(100:111, 3, 4) 
m1
class(m1)
attributes (m1)
  #access elements
m1[1] #1st element
m1[1,] #1st row
m1[1,2:3] #1st row, 2nd to 3rd element
m1[c(1,3),] #leaves our 2nd row
m1[, -c(1,3)] #leaves out 1st and 3rd column
m1[1,c(2,3)] #1st row, 2nd and 3rd column
m1

  #changing names in matrices
paste("C","D",sep="+")
paste("C",1:100,sep="*")
(colnames(m1) = paste('col', 1:4, sep='@')) #dimensions mst be same as that of table
m1
  #findind central tendencies of row and column data
colSums(m1) 
rowSums(m1)
colMeans(m1)
rowMeans(m1)

m2 = matrix(1:25,5,5)
m2
cbind(m2,m2)
rbind(m2,m2)
m2
  #changing values of row and column as required
sweep(m2, MARGIN = 1, STATS = c(2,3,4,5,6), FUN = "+") #row wise
sweep(m2, MARGIN = 2, STATS = c(2,2.2,2.4,2.6,2.8), FUN = "*") # column wise
  #Adding a row to the table.....meand and sd added
addmargins(m2, margin=1,sum) 
addmargins(m2, margin=2,sd)

#dataframe ----

#factors ----
