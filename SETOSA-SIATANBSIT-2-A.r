
#FLOREDA MAE SIATAN BSIT 2-A

#ASSIGNMENT
#SETOSA

#1. data(iris)
data <- data.frame(iris)
data

#2. Subset the iris set into 3 files-per species

first_data <- subset(iris, Species == "setosa")
first_data

sepal_length <- iris$Sepal.Length [1:50]
sepal_length

sepal_width <- iris$Sepal.Width [1:50]
sepal_width

petal_length <- iris$Petal.Length [1:50]
petal_length

petal_width <- iris$Petal.Width [1:50]
petal_width

s_mean <- c(sepal_length, sepal_width, petal_length, petal_width)
s_mean

#3 Get total mean for each species

total_mean <- mean(s_mean)
total_mean

#4. Get the mean of each characteristics of the species.

sl_mean <- mean(sepal_length)
sl_mean
#5.006

sw_mean <- mean(sepal_width)
sw_mean
#3.428

pl_mean <- mean(petal_length)
pl_mean
# 1.462

pw_mean <- mean(petal_width)
pw_mean
#0.246