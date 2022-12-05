#FLOREDA MAE SIATAN BSIT 2-A

#WORKSHEET 4

 #Create a dataframe using the table below.

#1. 

ShoeSize <- c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5, 9.0, 13.0, 7.5, 10.5, 8.5, 12.0, 10.5)

ShoeSize1 <-c (13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5, 8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0)

Height <- c(66.0,68.0,64.5,65.0,70.0,64.0,70.0,71.0,72.0,64.0,74.5,67.0,71.0,71.0)

Height1 <-c (77.0,72.0,59.0,62.0,72.0,66.0,64.0,67.0,73.0,69.0,72.0,70.0, 69.0,70.0)

Gender <- c("F", "F", "F", "F", "M", "F", "F", "F", "M", "F", "M", "F", "M", "M")
Gender1 <-c ("M", "M", "F", "F", "M", "F", "F", "M", "M", "F", "M", "M", "M", "M")

ShoeData <- data.frame (ShoeSize, Height, Gender, ShoeSize1, Height1, Gender1)

  #a. Describe the data
       # The data shows the shoe size, gender and height of respondents.
        
  #b. Find the mean of shoe size and height of the respondents. Copy the codes and results.
        
        m_shoesize <- cbind(ShoeSize,ShoeSize1)
        m_shoesize
        
    #Mean
        mean(m_shoesize)

       # 9.410714
        
        m_height <- cbind(Height, Height1)
        m_height
        
    #Height 
        
        mean(m_height)
    
      # 68.57143
        
  #c. Is there a relationship between shoe size and height? Why?
        
      #Yes, especially for the data of male repondents, when the height is increased the shoesize also increase. But it does not apply to all, in female's data 
      #their shoesize varies.
        
  #FACTORS
        
    #2. Construct character vector months to a factor with factor() and assign the result to factor_months_vector. Print out factor_months_vector and assert 
    #that R prints out the factor levels below the actual values.
        
        
        months <- c("March","April","January","November","January","September","October","September",
                    "November","August","January","November","November","February","May","August",
                   "July","December","August","August","September","November","February","April")
        
        factor_months <- factor(months)
        factor_months
        
        factor_months_vector <- factor_months
        factor_months_vector
        
        summary(factor_months)
        summary(factor_months_vector)
        
        
    #3.  Then check the summary() of the months_vector and factor_months_vector. |
       # Interpret the results of both vectors. Are they both equally useful in this case?
        
        #Yes, since it shows the same data.
        
        
        
        
       # 4. Create a vector and factor for the table below.
        
        Direction <-c("East", "West", "North")
        Direction
        
        Frequency <-c(1, 4, 3)
        Frequency
        
        tab <- data.frame(Direction, Frequency)
        tab
        
        factorS <- factor(Direction)
        
        new_order_data <- factor(factorS,levels = c("East","West","North"))
        print(new_order_data)
        
        
        
      #5. Enter the data below in Excel with file name = import_march.csv
        
       #A
         setwd("C:/Users/Floreda/OneDrive/Documents")
        getwd()
        
        exdata <- read.table("import_march.csv", sep=",", header=TRUE, stringsAsFactor=FALSE);
        exdata
        
       #B
        
        View(exdata) 
        
      # Students Strategy.1 Strategy.2 Strategy.3
      #1     Male          8         10          8
      #2                   4          8          6
      #3                   0          6          4
      #4   Female         14          4         15
      #5                  10          2         12
      #6                   6          0          9
        