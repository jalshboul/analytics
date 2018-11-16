#first line of code
x1 = 3 #assignement
x2 <- 3 #another form of assignment
#which is better
x1
x2
ls() #ls() tells you all the variables in the environment
data() #datasets available for use
AirPassengers #loading the air passengers dataset
plot(AirPassengers)
? AirPassengers
library() #libraries currently loaded
array = c(1,2,3,7,4,5,12,13,14)
mean = mean(array)
c(mean, mean(array, trim = 0.2))
median = median(array)
getwd() # Gets the working directory
Sys.Date() #Gets the data
Sys.time() #Gets the time
