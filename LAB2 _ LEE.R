## Lab2 - Sang Hwa Lee ##

# Task 1 
# Generate the vector integers from 1 to 10, in increasing order, by using ":"

vector1 <- as.integer(c(1:10))
print(vector1)
print(typeof(vector1))

#---------------------------------------------------


# Task 2
# Create the vector from 10 to 100 with seq().

vector2 <- seq(10,10+99*8, by = 8)
print(vector2)

# Check the length _ Its 100
print(length(vector2))


#---------------------------------------------------


# Task 3
# Create a vector with at least 50 data elements repeating 6 different words.

vector3 <- rep(c("Apple", "Banana", "Cantaloupe", "Dragon Fruit", "Eggplant", "Fig"), 9)
print(vector3)

# Check the length - It's 54, because of at least 50 data.  
print(length(vector3))

#---------------------------------------------------

# Task 4

# Create a matrix with 5 rows and 4 column.
matrix1 = matrix(c(1:20), nrow = 5, ncol = 4, byrow = TRUE)
print(matrix1)
print(typeof(matrix1))

# Create the data frame.
(matrix2 <- as.data.frame(matrix1))
print(matrix2)
print(typeof(matrix2))

#--------------------------------------------------------

# Task 5

# Create the first column(FC)
(FC <- 1:4) 

print(FC)
typeof(FC)

# Create the second column(SC)

(SC <- c("However,", "I", "did", "my", "BEST!"))


# Create the third column(TC)

(TC <- 1:20)


## Combine the 3 variables to create a data frame

(FC <- c(1:4))
(df1 <- cbind.data.frame(FC,SC,TC))
df1$FC <- factor(df1$FC,
                 levels = c(1,3,2,4),
                 labels = c("I feel like","missing","i'm", "something"))
df1
typeof(df1$SC)
str(df1)

#--------------------------------------------------------------------------

# Task 6

library(rio)

# Export data frame txt file. 
write.table(df1,"export.txt",row.names = F, sep = '\t')
df1txt <- read.table("export.txt")
df1txt


# Read the txt file
mydata <- read.table("export.txt")
View(mydata)
head(mydata)


# Import data frame txt file.
rio_txt <- import("export.txt")
head(rio_txt)


#----------------------------------------------

# Task 7

# Export data frame csv file
write.csv(df1,"export.csv",row.names=F)
df1csv <- read.csv("export.csv")
df1csv
is.data.frame(df1csv)

# Read the csv file.
df1csv <- read.csv("export.csv")
df1csv
is.data.frame(df1csv)


#Import data frame csv file 
rio_csv <- import("export.csv")
head(rio_csv)
View(rio_csv)


## Thank you ##



