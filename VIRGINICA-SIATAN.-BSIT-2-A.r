
#FLOREDA MAE SIATAN BSIT 2-A

#ASSIGNMENT
#VIRGINICA
#1. data(iris)
data <- data.frame(iris)
data

#2. Subset the iris set into 3 files-per species.
third_data <- subset(iris, Species == "virginica")
third_data

ts_length <- iris$Sepal.Length [101:150]
ts_length

ts_width <- iris$Sepal.Width [101:150]
ts_width

tp_length <- iris$Petal.Length [101:150]
tp_length

tp_width <- iris$Petal.Width [101:150]
tp_width

vir_mean <- c(ts_length, ts_width, tp_length, tp_width)
vir_mean

#3. Get total mean for each species.
virT_mean <- mean(vir_mean)
virT_mean
# 4.285

#4. Get the mean of each characteristics of the species.
virlength1_mean <- mean(ts_length)
virlength1_mean
# 6.588

virwidth1_mean <- mean(ts_width)
virwidth1_mean
#  2.974

virlength2_mean <- mean(tp_length)
virlength2_mean
# 5.552

virwidth2_mean <- mean(tp_width)
virwidth2_mean
#2.026