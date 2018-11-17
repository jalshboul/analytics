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
df1 %>% group_by(gender) %>% summarise(mean(marks1))
df1 %>% group_by(gender) %>% summarise(mean(marks2), max(marks2))

install.packages('dplyr')
library(dplyr)

names(mtcars)
mtcars %>% group_by(am) %>% summarise(length())
table(mtcars$carb)

mtcars %>% select(mpg,wt) %>% head(n=7)
mtcars %>% select(mpg,wt) %>% slice(c(1,5,6))
seq(1,32,2)
mtcars %>% select(mpg,wt) %>% slice(seq(1,32,2))
mtcars %>% filter(mpg > 25 & mpg < 30) %>% select (mpg,wt,hp,am)
mtcars %>% sample_n(3)
