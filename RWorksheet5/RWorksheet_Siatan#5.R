#FLOREDA MAE SIATAN 

#WORKSHEET 5

    #1. The table shows the enrollment of BS Computer Science, SY 2010-2011.

       #a. Plot the data using a bar graph. Write the codes and copy the result.

ggplot()
library(ggplot2)

data_CS <- data.frame("Course"=c("1st", "2nd", "3rd", "4th"), "SY"= c(80, 75, 70, 60))
ggplot(data_CS) + geom_col(aes(Course, SY))

SY <- c(80, 75, 70, 60)
Course <- c("1st", "2nd", "3rd", "4th")


    #1 B.Using the same table, label the bar chart with
    #Title = ” Enrollment of BS Computer Science
    #horizontal axis = “Curriculum Year” and
    #vertical axis = “number of students”

bar <- barplot(SY, main= "Enrollment of BS Computer Science",
              xlab = "Curriculum Year", ylab = "number of
              students")



    #2 The monthly income of De Jesus family was spent on the following:
    #60% on Food, 10% on electricity, 5% for savings, and
          #25% for other miscellaneous expenses.

  
  #2 
    #a. Create a table for the above scenario.
#Write the codes and its result.

Food <- 60
Electricity <- 10
Savings <- 5
Misc <- 25

DeJesus_Exp <- data.frame(Food, Electricity, Savings, Misc)
DeJesus_Exp

#Result
#   Food Electricity Savings Misc
#   60          10       5   25



    #2 B. Plot the data using a pie chart. Add labels, colors and legend.
    #Write the codes and its result.


DeJesus_Exp <- c(60, 10, 5, 25)
pie(DeJesus_Exp, main = "Expenses", col = rainbow(length(DeJesus_Exp)),
    label = c("Food", "Electricity", "Savings", "Misc"))

Expense_Label <- round(DeJesus_Exp/sum(DeJesus_Exp) * 100, 1)
Expense_Label <- paste(Expense_Label, "%", sep = "")

pie(DeJesus_Exp, main = "Expenses", col = rainbow(length(DeJesus_Exp)),
  label = Expense_Label, cex=0.8)
legend(1, c("Food", "Electricity", "Savings", "Misc"),
       cex = 0.8, fill = rainbow(length(DeJesus_Exp)))




    #3 Open the mtcars dataset.

  data("mtcars")

  #A.
  #Create a simple histogram specifically for mpg (miles per gallon) variable.
  #Use $ to select the mpg only. Write the codes and its result.

      mtC <- mtcars$mpg

    hist(mtC, main = "Histogram for mpg")


  #B. Colored histogram with different number of bins.
    hist(mtC, breaks=12, col="yellow")

  #C. Add a Normal Curve

  h<-hist(mtC, breaks=10, col="yellow", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
  xfit<-seq(min(mtC),max(mtC),length=40)
  yfit<-dnorm(xfit,mean=mean(mtC),sd=sd(mtC))
  yfit <- yfit*diff(h$mids[1:2])*length(mtC)
  lines(xfit, yfit, col="blue", lwd=2)

#4. Open the iris dataset. Create a subset for each species.

data("iris")

#4. A Write the codes and its result.



data_iris <- data.frame(iris)
data_iris
setosa_data <- subset(data_iris, Species == 'setosa')
setosa_data

data_irisb <- data.frame(iris)
data_irisb
versi_data <- subset(data_irisb, Species == 'versicolor')
versi_data

data_irisc <- data.frame(iris)
data_irisc
vergi_data <-subset(data_irisc, Species == 'virginica')
vergi_data

  #4 B. Get the mean for every characteristics of each species using colMeans().
  #Write the codes and its result.

    setosa <- colMeans(setosa_data[sapply(setosa_data,is.numeric)])
    setosa

    #Result 
    #Sepal.Length  Sepal.Width   Petal.Length   Petal.Width 
  #       5.006        3.428        1.462        0.246 

versicolor <- colMeans(versi_data[sapply(versi_data,is.numeric)])
versicolor

    #Result
    # Sepal.Length  Sepal.Width   Petal.Length  Petal.Width 
  #   5.936        2.770        4.260        1.326 

virginica <- colMeans(vergi_data[sapply(vergi_data,is.numeric)])
virginica

  #Result 
  # Sepal.Length  Sepal.Width  Petal.Length  Petal.Width 
  #   6.588        2.974        5.552        2.026 

    #C. Combine all species by using rbind()
  #The table should be look like this:

combine <- rbind(setosa, versicolor, virginica)
combine

#D. From the data in 4-c: Create the barplot().
#Write the codes and its result.
#The barplot should be like this.

barplot(combine, beside =TRUE, main = "Iris Mean",
        xlab = "Characterisics", ylab = "Mean Scores",
        col = c("pink", "blue", "yellow"))

