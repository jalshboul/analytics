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

#dataframe ----

#factors ----
