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

  #combine different data strcutres 
set.seed(1234)
(gender = sample(c('M','F'), size = 30, replace = T))
table (gender)
prop.table(table(gender))

(gender = sample(c('M','F'), size = 30, replace = T, prob = c(0.6,0.4)))
table (gender)
prop.table(table(gender))

x = c(1.8,2.2)
floor(x)
ceiling(x)
trunc(x)

  #dataframe
(rollno = 1:30)
(sname = paste('student',1:30, sep=''))
(gender = sample(c('M','F'), size =30, replace = T, prob = c(0.7,0.3)))

(marks1 = floor(rnorm(30, mean = 50, sd =10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size = 30, replace = T, prob = c(0.5,0.5)))
rollno; sname; gender; marks1; marks2; course
#Create DF
df1 = data.frame(rollno, sname, gender, marks1, marks2, course, stringsAsFactors = F)
str(df1) #structure of DF
head(df1) #top 6 rows
tail(df1)
class(df1)
summary(df1)
df1

df1$course
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)

head(df1[ ,c(2,4)])
df1[1:10,]
df1[1:5, 1:4]
#using conditions
df1[marks1 > 50 & gender =='F', c('rollno', 'sname', 'gender', 'marks1')]
df1[marks1 > 50 & gender =='F', c(1,2)]
df1[marks1 > 50 & gender =='F', ]

dim(df1)

aggregate(df1$marks1, by=list(df1$gender, df1$course), FUN = sum)
aggregate(marks1 ~ gender, data = df1, FUN = max)
aggregate(cbind(marks1,marks2) ~ gender, data = df1, FUN = max)


#factors ----

(grades= sample(c('a','b','c','d'), size = 30, replace =T, prob=c(.3,.2,.4,.1)))
summary(grades)
table(grades)
(gradesFactor = factor(grades))
summary(gradesFactor)




















