#FLOREDA MAE SIATAN

#RWORKSHEET 7a

Student <- seq(1:10)
PreTest <- c(55,54,47,57,51,61,57,54,63,58)
PostTest <- c(61,60,56,63,56,63,59,56,62,61)

tblDF <- data.frame(Student,PreTest,PostTest)
tblDF

    #a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
    #Write the codes and its result.

library(Hmisc)
library(pastecs)

##Hmisc
dsc <- describe(tblDF)
dsc 

##pastecs
st_dsc <- stat.desc(tblDF)
st_dsc

    #2. The Department of Agriculture was studying the effects of several levels of a
  #fertilizer on the growth of a plant. For some analyses, it might be useful to convert
  #the fertilizer levels to an ordered factor.

# The data were 10,10,10, 20,20,50,10,20,10,50,20,50,20,10.

DAdata<- c(10,10,10,20,20,50,10,
           20,10,50,20,50,20,10)
DAdata


    #a. Write the codes and describe the result.
    #ans
     # The levels differ from 10 to 20 to 50

datafactr <- factor(DAdata, ordered = TRUE)
datafactr

    #3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study
  #the exercise levels undertaken by 10 num3 were “l”, “n”, “n”, “i”, “l” ,
    #“l”, “n”, “n”, “i”, “l” ; n=none, l=light, i=intense

Exlvldata <- c("l","n","n","i","l","l","n","n","i","l")
Exlvldata


    #a. What is the best way to represent this in R?
    #ans 
      # present the data in dataframe
ExlvldataDF <- data.frame(Exlvldata)
ExlvldataDF


    #4.Sample of 30 tax accountants from all the states and territories of Australia and
  #their individual state of origin is specified by a character vector of state mnemonics
      #as:

state_data <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
                "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
                "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
                "vic", "vic", "act")
state_data 

  #a. Apply the factor function and factor level. Describe the results.

  #factor function and factor level
statefactr <- factor(state_data)
statefactr

#Getting factor level of states
statelvl <- levels(statefactr)
statelvl

      #5. From #4 - continuation:

  #Suppose we have the incomes of the same tax accountants in another vector (insuitably large units of money)

income <- c(60, 49, 40, 61, 64, 60, 59, 54,
            62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
            65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
income

  #a. Calculate the sample mean income for each state we can now use the special
  #function tapply():

incomettl <- tapply(income, state_data, mean)
incomettl


#b. Copy the results and interpret.

incomettl

#ans
# The state was factor out and was applied for the tapply function in order for the income 
#to be arranged caccording to state.

#6.Calculate the standard errors of the state income means (refer again to number 3)

#a. What is the standard error? Write the codes.

datalng <- length(incomettl)
datalng

datasd <- sd(incomettl)
datasd

data3 <- datasd/sqrt(datalng)
data3


   #b. Interpret the result.
  #the data was summarize in length as it shows it has a 8 observation
  #and data was also summarize by getting its standard deviation along with its standard of errors.

#7. Use the titanic dataset.

data(Titanic)
titanicDF <- data.frame(Titanic)
titanicDF

  #a. subset the titatic dataset of those who survived and not survived. Show the
  #codes and its result.

survive_data <- subset(titanicDF, Survived == "Yes")
survive_data

notsurv_data <- subset(titanicDF, Survived == "No")
notsurv_data


    #8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically as Dr. Wolberg reports his clinical cases. The database therefore reflects this
  #chronological grouping of the data. You can create this dataset in Microsoft Excel.

  #a. describe what is the dataset all about.
  #ans
    #it is a data for breast cancer patients, it was categorized according to types of breasts cancer and how serious it's state, the number of patients was also organized under the different category of breast cancer

#b. Import the data from MS Excel. Copy the codes.

library("readxl")
install.packages("readxl")

Read <- read_excel("/SIATAN/SIATAN_repo/files/RWorksheet7a/Breast_Cancer.xlsx") 

Read


    #c. Compute the descriptive statistics using different packages. Find the values of:
  #c.1 Standard error of the mean for clump thickness.

clm_lng <- length(data4$`CL. thickness`)
clm_lng

clm_sd <- sd(data4$`CL. thickness`)
clm_sd

clm_se <- clm_sd/sqrt(data4$`CL. thickness`)
clm_se

#c.5 Confidence interval of the mean for Uniformity of Cell Shape

#Calculate the mean
meanCS <- mean(data4$`Cell Shape`)
meanCS

#Calculate the standard error of the mean
standarde_lng <- length(data4$`Cell Shape`)
standarde_lng

standarde_sd <- sd(data4$`Cell Shape`)
standarde_sd

Cellshape_standarde <- standarde_sd/sqrt(standarde_lng)
Cellshape_standarde

#Find the t-score that corresponds to the confidence level
Ts = 0.05
Ts

Ts_standarde = standarde_lng - 1
Ts_standarde

Ts = qt(p=ts/2, df=Ts_standarde,lower.tail=F)
Ts

#Constructing the confidence interval

ConfidenceI <- Ts * Cellshape_standarde
ConfidenceI

#Lower
ConfidenceI_diff <- meanCS - ConfidenceI
ConfidenceI_diff

#Upper
sumConfidenceI <- meanCS + ConfidenceI
sumConfidenceI

Confidence <- c(ConfidenceI_diff, sumConfidenceI)
Confidence

#d. How many attributes?
att <- attributes(data4)
att

#e. Find the percentage of respondents who are malignant. Interpret the results.
pRes <- subset(data4, Class == "malignant")
pRes

#ans 
  #18 respondents are malignant in total of 49 respondents. Getting the percentage 18 / 49 * 100 / 49 * 100

#There 36% of respondents who are malignant.

#9. Export the data abalone to the Microsoft excel file. Copy the codes.

library("AppliedPredictiveModeling")

data(abalone)
View(abalone)
head(abalone)
summary(abalone)

#Exporting the data abalone to the Microsoft excel file

library(xlsx)

abaa<- write.xlsx("abalone","/SIATAN/SIATAN_repo/files/RWorksheet7a/Breast_Cancer.xlsx") 
abaa

