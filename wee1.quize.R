#Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this?
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x>10] <- 4
x
# Column names of the dataset
quiz_data = read.csv('hw1_data.csv')
names(quiz_data)

#Extract the first 2 rows of the data frame and print them to the console. What does the output look like?


quiz_data <- read.csv('hw1_data.csv')
totalrow <- nrow(quiz_data)
quiz_data[1:2,]

# Or
read.csv('hw1_data.csv',nrow=2)

# Or
quiz_data <- read.csv('hw1_data.csv')
head(quiz_data,2)



#How many observations (i.e. rows) are in this data frame?
quiz_data <- read.csv('hw1_data.csv')
nrow(quiz_data)


#Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
quiz_data = read.csv('hw1_data.csv')
tail(quiz_data,2)

#or
quiz_data <- read.csv('hw1_data.csv')
totalrow <- nrow(quiz_data)
totalrow
quiz_data[(totalrow-1):totalrow,]


#What is the value of Ozone in the 47th row?
quiz_data = read.csv('hw1_data.csv')
quiz_data[47,"Ozone"]

#How many missing values are in the Ozone column of this data frame?
quiz_data = read.csv('hw1_data.csv')
sub <- subset(quiz_data,is.na(Ozone), select=Ozone)
sub
nrow(sub)

#or
quiz_data = read.csv('hw1_data.csv')
q <- is.na(quiz_data[ , "Ozone"])
q
p <- quiz_data[q, ]  
p 
nrow(p) 

#or
quiz_data <- read.csv('hw1_data.csv')
good<- complete.cases(quiz_data[,"Ozone"])
good
quiz_data[!good,]
nrow(quiz_data[!good,])

#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
quiz_data <- read.csv('hw1_data.csv')
cases <- complete.cases(quiz_data[, "Ozone"])
apply(quiz_data[cases, "Ozone", drop=F],2,mean)

#Or
quiz_data <- read.csv('hw1_data.csv')
sub <- subset(quiz_data, !is.na(Ozone), select=Ozone)
apply(sub,2,mean)


#extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
quiz_data = read.csv('hw1_data.csv')
sub1 <- subset(quiz_data, Ozone>31 & Temp >90 & !is.na(Solar.R), select = Solar.R)
apply (sub1 , 2, mean )


#What is the mean of "Temp" when "Month" is equal to 6?
quiz_data = read.csv('hw1_data.csv')
sub1 <- subset(quiz_data, Month==6, select = Temp)
apply (sub1 , 2, mean )


#What is the data type of the Month column?
quiz_data = read.csv('hw1_data.csv')
quiz_data
class(quiz_data[,"Month"])


#What was the maximum ozone value in the month of May (i.e. Month = 5)?
quiz_data = read.csv('hw1_data.csv')
sub1 <- subset(quiz_data, Month==5 & !is.na(Ozone), select = Ozone)
apply (sub1 , 2, max )

