#wordcloud

#install.packages("wordcloud2")
?wordcloud2
library(wordcloud2)
head(demoFreq)
wordcloud2(demoFreq, size = 2, color = "random-light", backgroundColor = "grey")
df = data.frame(word = c("mdi", "iim", "imt", "MBA"), freq = c(20,23,15,125))
wordcloud2(df)

