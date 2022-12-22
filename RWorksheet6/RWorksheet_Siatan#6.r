
#FLOREDA MAE SIATAN

#RWORKSHEET 6

library(dplyr)
library(ggplot2)
library(tinytex)

    # 1. How many columns are in mpg data set? How about the number of rows? Show the codes and its result.
    #The data set mpg has 11 columns and 234 rows.

data(mpg)
data_set <- glimpse(mpg)
data_set

    #2. Which manufacturer has the most models in this data set? 
    #The manufacturer that has most model are the Dodge that has 37 models.

mostModel <- data_set %>% group_by(manufacturer) %>% count()
mostModel
colnames(mostModel) <- c("Manufacturer","Counts")
mostModel

    #Which model has the most variations?
  # The model that has most variation is the Caravan 2wd model, that has 11 variations.


mostVariation<- data_set %>% group_by(model) %>% count()
mostVariation
colnames(mostVariation) <- c("Model","Counts")
mostVariation


    #a. Group the manufacturers and find the unique models. Copy the codes and result.
UniqueModel <- data_set %>% group_by(manufacturer, model) %>% distinct() %>% count()
UniqueModel
colnames(UniqueModel) <- c("Manufacturer", "Model","Counts")
UniqueModel

    #b. Graph the result by using plot() and ggplot(). Write the codes and its result.

plot(UniqueModel)
ggplot(UniqueModel, aes(x = Model, y = Counts )) + geom_point(color='green')

  #3. Same data set will be used. You are going to show the relationship of the model and the manufacturer.

ggplot(UniqueModel, aes(x = Model, y = Manufacturer )) + geom_point(color='green')

  #a. What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?

ggplot(mpg, aes(model, manufacturer)) + geom_point()
    # The gglpot codes displays the graph models of manufacturers with black geom points color.

  # b. For you, is it useful? If not, how could you modify the data to make it more informative?
      # Yes, it is useful because it clearly shows the detailed result of the graphs and plots.

  #4. Using the pipe (%>%), group the model and get the number of cars per model. Show codes and its result.


carsmodel <- data_set %>% group_by(model) %>% count()
carsmodel
colnames(carsmodel) <- c("Model","Counts")
carsmodel


    #a. Plot using the geom_bar() + coord_flip() just like what is shown below.
      #Show codes and its result.

qplot(model,data = mpg,main = "Number of Cars per Model", xlab = "Model",
      ylab = "Number of Cars", geom = "bar", fill = manufacturer) +
  coord_flip()


  #b. Use only the top 20 observations. Show code and results.

del <- carsmodel[1:20,] %>% top_n(2)
del

    #5. Plot the relationship between cyl - number of cylinders and displ - engine displacement 
    #using geom_point with aesthetic colour = engine displacement. Title should be
    #“Relationship between No. of Cylinders and Engine Displacement”.
      #a. Show the codes and its result.

ggplot(mpg, aes(x = displ , y = cyl, col = displ )) + geom_point()

ggplot( data = mpg) +
  geom_point(mapping = aes(x = displ , y = cyl, col = displ))

ggplot(data = mpg, mapping = aes(x = displ, y = cyl)) +
  geom_point(mapping=aes(color=displ))

    #b. How would you describe its relationship?
    #The relationship is consistent.

    #6. Get the total number of observations for drv - type of drive train (f = front-wheel drive, r = rear wheel drive, 4 = 4wd) and class - type of class (Example: suv, 2seater, etc.).

wheeldrive <- subset(mpg, drv == 'f')
nrow(wheel_drive)
wheeldrive

rearwheel <- subset(mpg, drv == 'r')
nrow(rear_wheeld)
rearwheel


num4 <- subset(mpg, drv == '4')
nrow(num4)
num4

c <- subset(mpg, class == 'compact')
nrow(c)
c

m_size <- subset(mpg, class == 'midsize')

nrow(m_size)
m_size

two_seater <- subset(mpg, class == '2seater')
nrow(two_seater)
two_seater

mini_van <- subset(mpg, class == 'minivan')
nrow(mini_van)
mini_van

p_u <- subset(mpg, class == 'pickup')
nrow(p_u)
p_u

sub_comp <- subset(mpg, class == 'subcompact')
nrow(sub_comp)
sub_comp

    #Plot using the geom_tile() where the number of observations for class be used as a fill for aesthetics.
    #a. Show the codes and its result for the narrative in #6.

ggplot(mpg, aes(drv, class)) +
  geom_tile (aes(fill = class)) 

    #b. Interpret the result. 
  #The result shows a tile created by the relationship between a class and drv.

    #7. Discuss the difference between these codes. Its outputs for each are shown below.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = "blue"))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")

  #In the first code, the "colour = blue" code was inside the function aes(), the results failed 
  #to give a color blue dots or points. The second code was executed and 
  #in its proper place or outside the aes() function, that result the correct plot.

    #8. Try to run the command ?mpg. What is the result of this command?
    #?mpg
    #a. Which variables from mpg data set are categorical?
    #Categorical variables in mpg includes: manufacturer, model, trans (type of transmission), drv (front-wheel drive, rear-wheel, 4wd), fi (fuel type), and class (type of car).

    #b. Which are continuous variables?
    #Continuous variables in mpg includes: displ (engine displacement in litres),cyl (number of cylinders),cty (city miles/gallon), and hwy (highway gallons/mile)

    #c. Plot the relationship between displ (engine displacement) and hwy(highway miles per gallon). Mapped it with a continuous variable you have identified in 
      #5-b. What is its result? Why it produced such output?
  #The data shows that they are in the positive rate using the displ for hwy and cty scattered plot.


ggplot( data = mpg) +
  geom_point(mapping = aes(x = displ , y = hwy, col = displ)) 


    #9. Plot the relationship between displ (engine displacement) and hwy(highway miles per gallon) using geom_point(). Add a trend line over the existing plot using
    #geom_smooth() with se = FALSE. Default method is “loess”.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=displ)) +
  geom_smooth(se =FALSE)

    #10. Using the relationship of displ and hwy, add a trend line over existing plot. Set the
    #se = FALSE to remove the confidence interval and method = lm to check for linear modeling.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=displ)) +
  geom_smooth(se =FALSE,method = lm)
