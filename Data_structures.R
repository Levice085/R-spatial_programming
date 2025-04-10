"
===============DATA STRUCTURES=====================
The most essential data structures used in R include: 
  
  Vectors
Lists
Dataframes
Matrices
Arrays
Factors
Tibbles

"
#Vectors- one dimensional data structures
# Vectors(ordered collection of same data type)
X <- c(1, 3, 5, 7, 8)

# Printing those elements in console
print(X)

#LIST
#These are also one-dimensional data structures. A list can be a list of
#vectors, list of matrices, a list of characters and a list of functions and so on.
empId <- c(1, 2, 3, 4)

empName <- c("Debi", "Sandeep", "Subham", "Shiba")

numberOfEmp <- 4


empList <- list(empId, empName,numberOfEmp)

print(empList)

#DATAFRAMES
Name <- c("Amiya", "Raj", "Asish")

Language <- c("R", "Python", "Java")

Age = c(22, 25, 45)

df <- data.frame(Name, Language, Age)

print(df)

#MATRICES
A = matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
  nrow = 3, ncol = 3,  
  byrow = TRUE                             
)

print(A)

#ARRAYS
A = array(
  c(1, 2, 3, 4, 5, 6, 7, 8),
  dim = c(2, 2, 2)                        
)

print(A)

#FACTORS
# Creating factor using factor()
fac = factor(c("Male", "Female", "Male",
               "Male", "Female", "Male", "Female"))

print(fac)

#TIBBLE
install.packages("tidyverse")
library(tibble)

# Create a tibble with three columns: name, age, and city
my_data <- tibble(
  name = c("Sandeep", "Amit", "Aman"),
  age = c(25, 30, 35),
  city = c("Pune", "Jaipur", "Delhi")
)

# Print the tibble
print(my_data)

#======================STRING CONVERSION==========================#
str <- "Hi LeArn CodiNG"
print(toupper(str))
print(tolower(str))
print(casefold(str, upper = TRUE))


#R STRING FORMATTING
x <- 42
y <- 3.14159
result <- sprintf("The answer is %d, and pi is %.2f.", x, y)

# Print the result
print(result)

# Create a string
string <- "Hello, World!"

# Replace "World" with "Universe"
string <- gsub("World", "Universe", string)

# Print the updated string
print(string)


#VECTORS
X<- c(61, 4, 21, 67, 89, 2)
cat('using c function', X, '\n')

Y<- seq(1, 10, length.out = 5) 
cat('using seq() function', Y) 

Z<- 2:7
cat('using colon', Z)

#Types of vectors

# Create a numeric vector
x <- c(1, 2, 3, 4, 5)

# Find the length of the vector
length(x)
# Create a character vector
y <- c("apple", "banana", "cherry")

# Find the length of the vector
length(y)
# Create a logical vector
z <- c(TRUE, FALSE, TRUE, TRUE)

# Find the length of the vector
length(z)

#ACCESSING THE VECTOR ELEMENTS
X<- c(2, 5, 18, 1, 12)
X[1:2]
X[c(1,4)]
#Modifying the element
# modify a specific element
X[2] <- 1
X

#DELETING A VECTOR
M<- c(8, 10, 2, 5)
M<- NULL
cat('Output vector', M)

#SORTING THE ELEMENTS IN A VECTOR
X<- c(8, 2, 7, 1, 11, 2)

# Sort in ascending order
A<- sort(X)
cat('ascending order', A)

# sort in descending order 
# by setting decreasing as TRUE
B<- sort(X, decreasing = TRUE)
cat('descending order', B)

#NAMING LIST COMPONENTS
# Creating a named list
my_named_list <- list(name = "Sudheer", age = 25, city = "Delhi")
print(my_named_list)


# Creating a list by naming all its components
empId = c(1, 2, 3, 4)
empName = c("Debi", "Sandeep", "Subham", "Shiba")
numberOfEmp = 4
empList = list(
  "ID" = empId,
  "Names" = empName,
  "Total Staff" = numberOfEmp
)
print(empList)

print(empList[[2]])

print(empList[[2]][2])

print(empList[[1]][4])


# Modifying the top-level component
empList$"Total Staff" = 5

# Modifying inner level component
empList[[1]][5] = 5
empList[[2]][5] = "Kamala"

cat("After modified the list\n")
print(empList)

#Adding items to a list
my_numbers = c(1,5,6,3)
#adding number at the end of list
append(my_numbers, 45)
my_numbers

# Deleting a top level components
cat("After Deleting Total staff components\n")
print(empList[-3])

# Deleting a inner level components
cat("After Deleting sandeep from name\n")
print(empList[[2]][-2])

#CONVERTING LIST TO VECTORS
# Create lists.
lst <- list(1:5)
print(lst)
vec <- unlist(lst)
print(vec)

#CONVERTING LIST TO MATRICES
# Defining list
lst1 <- list(list(1, 2, 3),
             list(4, 5, 6))

# Print list
cat("The list is:\n")
print(lst1)
cat("Class:", class(lst1), "\n")

# Convert list to matrix
mat <- matrix(unlist(lst1), nrow = 2, byrow = TRUE)

# Print matrix
cat("\nAfter conversion to matrix:\n")
print(mat)
cat("Class:", class(mat), "\n")

A = matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
  nrow = 3,ncol = 3,         
  byrow = TRUE          
)
A# Naming rows
rownames(A) = c("a", "b", "c")
# Naming columns
colnames(A) = c("c", "d", "e")
print(A)


# Matrix having 3 rows and 3 columns
# filled by a single constant 5
print(matrix(5, 3, 3)) 

#CREATING DATAFRAME
# creating a data frame
friend.data <- data.frame(
  friend_id = c(1:5), 
  friend_name = c("Adee", "Juliana", 
                  "Julie", "Matoke", 
                  "Sally"),
  stringsAsFactors = FALSE
)
print(friend.data)
# using str()
print(str(friend.data))
# using summary()
print(summary(friend.data)) 

# Extracting friend_name column
result <- data.frame(friend.data$friend_name)
print(result)

# Expanding data frame
friend.data$location <- c("Nairobi", "Homabay", 
                          "Mombasa", "Wajir",
                          "Embu")
resultant <- friend.data
# print the modified data frame
print(resultant)

new_name = c(6,"Moses")
friend.data <- rbind(friend.data,new_name)
# Access Items using [] 
friend.data[1]

# Access Items using [[]]
friend.data[['friend_name']]

# Access Items using $
friend.data$friend_id

# find out the number of rows and clumns
nrow(friend.data)
ncol(friend.data)
dim(friend.data)

#USING RBIND AND CBIND
# Adding a new row for a new product
New_Product <- c(104, "Sunglasses", 39.99, 40)
Products <- rbind(Products, New_Product)

#Existing dataframe representing products in a store
Products <- data.frame(
  Product_ID = c(101, 102, 103),
  Product_Name = c("T-Shirt", "Jeans", "Shoes"),
  Price = c(15.99, 29.99, 49.99),
  Stock = c(50, 30, 25)
)
print(Products)

Discount <- c(5, 10, 8)  # New column values for discount
Products <- cbind(Products, Discount)
print(Products)

#REMOVING A ROW IN A DF
install.packages("dplyr")
library(dplyr)
# Create a data frame
data <- data.frame(
  friend_id = c(1, 2, 3, 4, 5),
  friend_name = c("Sachin", "Sourav", "Dravid", "Sehwag", "Dhoni"),
  location = c("Kolkata", "Delhi", "Bangalore", "Hyderabad", "Chennai")
)

data

# Remove a row with friend_id = 3
data <- subset(data, friend_id != 3)
data
# Remove the 'location' column
data <- select(data, -location)
data 

#Retrieving variables in a df
data$friend_name

#We can also use the `$` data access to add **new variables**.
#Write a code for it

#Indexing in dataframes
data[1,1]
data[1,]
data[,1]
data[1, 1]