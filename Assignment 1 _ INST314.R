# Task 3 _ Create 3 vectors


vector1 = c('A','B','C','D') # The first vector is a letter(character)
vector2 = c(1L, 2L, 3L, 4L) # This second vector is a integer numbers
vector3 = c(1.5, 2.7, 3.1, 4.5) # This third vector is of float numbers



# Print each vector and check the data type and structure of each one

print(vector1) # Print the vector
typeof(vector1) # Print type of the data in vector 
str(vector1) # Print the structure of the vector

print(vector2)  # Print the vector
typeof(vector2) # Print type of the data in vector 
str(vector2) # Print the structure of the vector

print(vector3) # Print the vector
typeof(vector3) # Print type of the data in vector 
str(vector3) # Print the structure of the vector




# Task 4

# This is vector that create the first matrix.
vecm1 = c(1,2,3,4,5,
          6,7,8,9,10,
          11,12,13,14,15,
          16,17,18,19,20)

# This is first matrix of double number.
matrix1 =  matrix(vecm1, nrow = 4, ncol = 5, byrow = TRUE)

# second matrix.
vecm2 = c("a","b","c","d","e",
          "f","g","h","i","j",
          "k","l","m","n","o",
          "p","q","r","s","t")

# second matrix of characters.
matrix2 = matrix(vecm2, nrow = 4, ncol = 5, byrow = TRUE)


# print each matrix and check the data type and structure.

print(matrix1) # print matrix.
typeof(matrix1) # print type of data in the matrix.
dim(matrix1) # print the dimensions of the matrix.

print(matrix2) # print matrix.
typeof(matrix2) # pirnt type of data in the matrix.
dim(matrix2) # print the dimensions of the matrix.




# Task 5

# First array, create 3 tables with 30 characters elements.
array1 = array(c(vector1,vecm2), dim=c(6,5,3))

# Second array, same like first step.
array2 = array(c(vector3,vecm1), dim=c(6,5,3))

# Print each array and check the data type and structure.
print(array1) # print array.
typeof(array1) # print type of data in the array.
dim(array1) # print the dimensions of the array.

print(array2) # print array.
typeof(array2) #print type of data in the array.
dim(array2) # print the dimensions of the array.




# Task 6

Test1 <- c(11, 8, 7, 10, 7) # values for the first column.
Test2 <- c(7, 8, 6, 9, 2) # Values for the second column.
Pass <- c(TRUE, TRUE, FALSE, TRUE, FALSE) # Values for the third column.
Name <- c("Tom", "Grace", "Daniel", "Jason", "Anna") # Values for the fourth column.

df <- data.frame(Test1, Test2, Pass, Name) ## This is the create the dataframe.

print(df) # print dataframe.
str(df) # print the dataframe structure.




# Task 7

# List of 4 vectors of different lengths and types.
list1 = list(vector1, vecm1, Pass, c("Yes", "No"))

print(list1) # Print the list.
str(list1) # Print the list structure.




# Task 8

# Create the list with list of Task 7.
anotherList = list(list1)

print(anotherList) # Print the list.

