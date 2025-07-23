#.....Printing my first code......#
print("Hello World")
print("Hello World",quote = FALSE)


#======Basic syntax===============#

#.............Variables.......#
# Legal variable names:
myvar <- "John" 
my_var <- "John"
myVar <- "John"
MYVAR <- "John"
myvar2 <- "John"
.myvar <- "John"

# Illegal variable names:
2myvar <- "John"
my-var <- "John"
my var <- "John"
_my_var <- "John"
my_v@ar <- "John"
TRUE <- "John"


#String length
str <- "Hello World!"
str
nchar(str)


#Combine Two Strings
#Use the paste() function to merge/concatenate two strings:
number1 <- "Hello"
number2 <- "World"
paste(number1,number2)
cat("You can say: ",str)

# Exercise: Write R program to add two numbers
numb1 <- 8
numb2 <- 4

# Adding two numbers 
sum <- numb1 + numb2 

cat("The sum is", sum)


#Booleans (Logical Values)

# Assignment operators
my_var <- 3

my_var <<- 3

3 -> my_var
ls()
rm(sum)
#ls() -To check for list of variables
#rm()- To remove variables

3 ->> my_var

my_var # print my_var
#===========IF STATMENTS==========#
#if else statements
a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}

#Nested if statments
x <- 50

if (x > 10) {
  print("Above ten")
  if (x > 20) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
}

#-----------AND-----------#
#The & symbol (and) is a logical operator, and is used to combine conditional statements:
a <- 600
b <- 33
c <- 500

if (a > b & c > a) {
  print("Both conditions are true")
}else{
  "The condition is not true"
}

#---------------OR----------------------#
#The | symbol (or) is a logical operator, and is used to combine conditional statements:
a <- 200
b <- 33
c <- 500

if (a > b | a > c) {
  print("At least one of the conditions is true")
} else{
  "Both conditions are true"
}

#=================LOOPS=========================#
#Loops can execute a block of code as long as a specified condition is reached.

#Loops are handy because they save time, reduce errors, and they make code more readable.

#R has two loop commands:
  
#while loops
#for loops

#While loops
#With the while loop we can execute a set of statements as long as a condition is TRUE:
i <-1
while (i<=6){
  print(i)
  i =i+1
}
#Note: remember to increment i, or else the loop will continue forever.
val = 1 
# using while loop  
while (val <= 5 )  
{  
  # statements  
  print(val)  
  val = val + 1 
} 
#..........Using Breaks......#
i <- 0
while (i <6) {
  
  print(i)
  i <- i + 1
  
  if (i == 4) {
    break
  }
}

#..........Next {continue in python}.........#
i <- 0
while (i <= 6) {
  
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}
#Print prime numbers using while loop
p <-0
while(p<10){
  p=p+1
  
  if(p==1 | p==4 |p==6 |p==8 |p==9|p==10){
    next
  }
  print(p)
}
#..........While and if statements........#
dice <- 0
while (dice<6){
  dice =dice+1
  if (dice<6){
    print("No Yahtzee")
  }else{
    print("Yahtzee")
    
  }
}


#For loops
for (x in 1:10){
  print(x)
}

fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
}

dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
}
#The for loop does not require an indexing variable to set beforehand, 
#like with while loops.

for (x in fruits) {
  if (x == "cherry") {
    break
  }
  print(x)
}
#The loop will stop at "cherry" because we have chosen to finish the loop by
#using the break statement when x is equal to "cherry" (x == "cherry").

for (x in fruits) {
  if (x == "banana") {
    next
  }
  print(x)
}
#When the loop passes "banana", it will skip it and continue to loop.
#Another way to do the Yahtzee game
dice = 1:6
for (i in dice){
  if (i==6){
    print(paste("The dice number",i,"is Yahtzee"))
  }else{
    print(paste("The dice number",i,"is not Yahtzee!"))
  }
}

#Nested loops
adj <- list("red", "big", "tasty")

fruits <- list("apple", "banana", "cherry")
for (i in adj){
  for (j in fruits){
    print(paste(i,j))
  }
}

#Function

#A function is a block of code which only runs when it is called.

#You can pass data, known as parameters, into a function.

#A function can return data as a result.
my_function <- function() { # create a function with the name my_function
  print("Hello World!")
}
my_function()

#Arguments
#Information can be passed into functions as arguments.

#Arguments are specified after the function name, inside the parentheses. 
#You can add as many arguments as you want, just separate them with a comma.

#The following example has a function with one argument (fname). When the
#function is called, we pass along a first name, which is used inside the 
#function to print the full name:

my_Function <- function(fname,lname){
  paste("My name is",fname,lname)
}
my_Function("Levis","Kitonge")

#Default parameter value
origin = function(country  = "Kenya"){
  paste("I am from ",country)
}
origin("Sweden")
origin("Sudan")
origin()

#Return statement
#To let a function return a result, use the return() function:
my_function = function(x,y){
  return (x+y)
}
my_function(2,4)

#Nested Functions
#There are two ways to create a nested function:
  
#Call a function within another function.
#Write a function within a function.

#Call a function within another function
addition <- function(x,y){
  add <- x+y
  return (add)
}
addition(addition(2,2),addition(3,3))

#Write a function within a function
outer_function <-function(x){
  inner_function <- function(y){
    a <- x+y
    return(a)
  }
  return(inner_function)
}
output <- outer_function(4)
output(5)

#Global Variables
#Variables that are created outside of a function are known as global variables.

#Global variables can be used by everyone, both inside of functions and outside.
txt <- "awesome"
my_function <- function() {
  paste("R is", txt)
}

my_function()

#If you create a variable with the same name inside a function, this
#variable will be local, and can only be used inside the function. The global
#variable with the same name will remain as it was, global and with the original value.
txt <- "global variable"
my_function <- function() {
  txt = "fantastic"
  paste("R is", txt)
}

my_function()

txt 
txt <- "global variable"
my_function <- function() {
  txt = "fantastic"
  paste("R is", txt)
}

my_function()

txt # 
txt <- "global variable"
my_function <- function() {
  txt = "fantastic"
  paste("R is", txt)
}

my_function()

txt # 
#To create a global variable inside a function, you can use the global assignment
#operator <<-
  
print("Hello World")
numb1 <- 1
numb2 <-2
numb1+numb2
numb3 <-numb1+numb2
numb1

make.power <- function(n){
  pow <- function(x){
    x = x^n
  }
  pow
}

cube <- make.power(3)
square <- make.power(2)
print(cube(3))
print(square(3))

# R program to illustrate
# taking input from the user

# taking multiple inputs
# using braces 
{
  var1 = readline("Enter 1st number : ");
  var2 = readline("Enter 2nd number : ");
  var3 = readline("Enter 3rd number : ");
  var4 = readline("Enter 4th number : ");
}

# converting each value
var1 = as.integer(var1);
var2 = as.integer(var2);
var3 = as.integer(var3);
var4 = as.integer(var4);

# print the sum of the 4 number
print(var1 + var2 + var3 + var4)





# R program to illustrate
# taking input from the user

# string input
var1 = readline(prompt = "Enter your name : "); 

# character input
var2 = readline(prompt = "Enter any character : ");
# convert to character
var2 = as.character(var2)

# printing values
print(var1)
print(var2)
