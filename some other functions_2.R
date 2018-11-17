getwd()
data = read.csv("10000 Sales Records.csv")
print(data)
print(is.data.frame(data))

retval = subset(data, (Unit.Cost >= (31.79)) & (Unit.Cost <=(502.54)))
print(retval)




install.packages('caTools')
library(caTools)

split = sample.split(dataset$Salary, SplitRatio = 0.7)
