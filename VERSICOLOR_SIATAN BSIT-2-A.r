
#FLOREDA MAE SIATAN BSIT 2-A

#ASSIGNMENT
#VERSICOLOR

#1. data(iris)
  data <- data.frame(iris)
  data

#2. Subset the iris set into 3 files-per species
  second_data <- subset(iris, Species == "versicolor")
  second_data

  ss_length <- iris$Sepal.Length [51:100]
  ss_length

  ss_width <- iris$Sepal.Width [51:100]
  ss_width

  sp_length <- iris$Petal.Length [51:100]
  sp_length

  sp_width <- iris$Petal.Width [51:100]
  sp_width

    ver_mean <- c(ss_length, ss_width, sp_length, sp_width)
    ver_mean

#3. Get total mean for each species.
verT_mean <- mean(ver_mean)
verT_mean

#3.573

#4. Get the mean of each characteristics of the species.
verl1_mean <- mean(ss_length)
verl1_mean
#5.936

verw1_mean <- mean(ss_width)
verw1_mean
#2.77

verl2_mean <- mean(sp_length)
verl2_mean
#4.26

verl2_mean <- mean(sp_width)
verl2_mean
#1.326
