#Floreda Mae Siatan BSIT 2-A

#WORKSHEET-3 in R

#1. There is a built-in vector LETTERS contains the uppercase letters of the alphabet
#and letters which contains the lowercase letters of the alphabet.

#LETTERS

## [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S"
## [20] "T" "U" "V" "W" "X" "Y" "Z"

#letters

## [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s"
## [20] "t" "u" "v" "w" "x" "y" "z"



###Based on the above vector LETTERS.

  #a. You need to produce a vector that contains the first 11 letters.
first <- LETTERS [1:11]
first

##ANS [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K"

  #b. Produce a vector that contains the odd numbered letters.

odd_nums <- LETTERS[seq (1,26,2)] 
odd_nums

##ANS [1] "A" "C" "E" "G" "I" "K" "M" "O" "Q" "S" "U" "W" "Y"

  #c. Produce a vector that contains the vowels.

vowels <- LETTERS [c (1, 5, 9, 15, 21)]
vowels

##ANS [1] "A" "E" "I" "O" "U"

###Based on the above vector letters:

  #d. Produce a vector that contains the last 5 lowercase letters.

lower <- letters
lower [22:26]

##ANS [1] "v" "w" "x" "y" "z"

  #e. Produce a vector that contains letters between 15 to 24 letters in lowercase.

let <- letters [16:23]
let

##ANS [1] "p" "q" "r" "s" "t" "u" "v" "w"

#2. Create a vector with the average temperature in April for Tuguegarao City, Manila,
#Iloilo City, Tacloban, Samal Island, and Davao City. The average temperature in celcius are 
#42, 39, 34, 34, 30, and 27 degrees.

  #a. What is the R code and its result for creating a character vector for the city/town of
#Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City? Name the
#object as city. The names should follow the same order as in the instruction.

city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
city

##ANS [1] "Tuguegarao City" "Manila"          "Iloilo City"     "Tacloban"        "Samal Island"    "Davao City"    

#b. The average temperature in Celcius are 42, 39, 34, 34, 30, and 27 degrees. Name the object as 
#temp. Write the R Code and its output. Numbers should also follow what is the instruction.

temp <- c(42, 39, 34, 34, 30, 27)
temp

#ANS [1] 42 39 34 34 30 27

#c.Associate the temperature temp with the city by using names() function. What is 
#the R code and its result?

city_temp <- cbind (c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City"),
                    c(42, 39, 34, 34, 30, 27))
city_temp

colnames(city_temp) <-c ("city", "temp")
city_temp

#ANS city              temp
#[1,] "Tuguegarao City" "42"
#[2,] "Manila"          "39"
#[3,] "Iloilo City"     "34"
#[4,] "Tacloban"        "34"
#[5,] "Samal Island"    "30"
#[6,] "Davao City"      "27"

#d.From the answer in c, what is the content of index 5 and index 6? What is its R code?

city_temp [5]

#ANS "Samal Island"

city_temp [6]

#ANS "Davao City"

#2. Create a matrix of one to eight and eleven to fourteen with four columns and three rows.
  #a. What will be the R code for the #2 question and its result?

num_m <- matrix (c(1:8, 11:14), nrow=3, ncol=4)
num_m

#ANS 
#     [,1] [,2] [,3] [,4]
#[1,]    1    4    7   12
#[2,]    2    5    8   13
#[3,]    3    6   11   14

  #b. Multiply the matrix by two. What is its R code and its result?

mul <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
mul <- mul*2
mul

#ANS 
#     [,1] [,2] [,3] [,4]
#[1,]    2    8   14   24
#[2,]    4   10   16   26
#[3,]    6   12   22   28

  #c. What is the content of row 2? What is its R code?
mul[2,]

#ANS [1]  4 10 16 26

  #d. What will be the R code if you want to display the column 3 and column 4 in row 1 and row 2? What is its output?
mul[1, 3]

#ANS [1] 14

mul [2,4]

#ANS [1] 26

  #e. What is the R code is you want to display only the columns in 2 and 3, row 3? What is its output?

mul [3,2]

#ANS [1] 12

mul [3,3]

#ANS [1] 22
 
  #f. What is the R code is you want to display only the columns 4? What is its output?
mul[,4]

#ANS [1] 24 26 28

  #g. Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro for the matrix that was created in b.‘. What is its R code and corresponding output?
 
dimnames(mul) <- list(c("isa", "dalawa", "tatlo"), 
                     c("uno", "dos", "tres", "quatro"))
mul

#ANS 
#       uno dos tres quatro
#isa      2   8   14     24
#dalawa   4  10   16     26
#tatlo    6  12   22     28

  #h. From the original matrix you have created in a, reshape the matrix by assigning a new dimension with dim(). New dimensions should have 2 columns and 6 rows. 
#What will be the R code and its output?

dim(num_m) <- c(6, 2) 
num_m

#ANS 
#     [,1] [,2]
#[1,]    1    7
#[2,]    2    8
#[3,]    3   11
#[4,]    4   12
#[5,]    5   13
#[6,]    6   14


#An array contains 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1 
  #a. Create an array for the above numeric values. Each values will be repeated twice What will be the R code if you are to create a three-dimensional array with 4 
#columns and 2 rows. What will be its output?

  num <- c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)
  
num_array <- array(rep(num, 2), dim = c(2,4,3))
num_array

#ANS
#, , 1

#       [,1] [,2] [,3] [,4]
#[1,]    1    3    7    9
#[2,]    2    6    8    0

#, , 2

#       [,1] [,2] [,3] [,4]
#[1,]    3    5    1    3
#[2,]    4    1    2    6

#, , 3

#       [,1] [,2] [,3] [,4]
#[1,]    7    9    3    5
#[2,]    8    0    4    1

  #b. How many dimensions do your array have?
#ANS 3
