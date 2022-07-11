# Basic Arthmetic operations

192+250 #Addition
955-380 #Subtraction
20*100 #Multiplication
50/5 #Division
5^4 #Exponent
18%%7 #Modulo - returns the remainder
(500*2)+(80/2) #Order of operations
500*(2+1) #Order of operation

# Assigning variables
selling <- 500               #Assign variable1
cost <- 250                  #Assign variable2
profit <- selling - cost     #Assign variable3
profit                       #Displays the value stored in profit

# Data types in R
num <- 3.7 #Decimals are part of the Numeric class in R

i <- 10 #Whole numbers are known as integers
typeof(i) #To check the data type of the variable

t <- TRUE
f <- FALSE #Boolean values are part of the logical class
typeof(t)

ch <- "HELLO" #Text/string values are known as characters 
class (ch) #Checks the data type of a variable
typeof(ch) #Checks the data type of a variable

c <- 1+2i #R supports complex data type too
class(c)
length(ch)

# Using the Print function

print ("hey") #Prints hey on the screen 

y <- 20
print(y) #Prints the value of y

x <- mtcars
print (mtcars) #Prints the mtcars dataset

print(paste('hello','students'))  #Paste function

print(paste('hello','students',sep=',')) #Sep is for the chosen separator between the pasted items

paste0('hello','students')  #Displays without space

sprintf("%s is %f feet tall", "Ashley", 5.1) #Returns a character vector containing a formatted combination of text and variable values 

# Vectors in R

# Create vectors
vec1<-c(10,20,30)
vec1
class(vec1)

vec2<-c("a","b","c")
vec2
class(vec2)

vec3<-c(TRUE,FALSE,TRUE)
vec3
class(vec3)

# Print the above 3 vectors at once with semicolon
vec1; vec2; vec3 #';' is used to separate 2 or more variables
vec1;vec2;vec3
vec4<-c(10,"a",TRUE) #R converts every value to character type
vec4
class(vec4)

vec5 <- c(FALSE,2) #R converts every value to numeric type
vec5
class(vec5)

vec6 <- c('A',1)
vec6
class(vec6)

vec7<-c(1:20)
vec7

vec8<-seq(1,20)
vec8

vec9<-1:25
vec9

#use the vector() function to initialize vectors.
x <- vector('numeric', length = 10)
x

#create a vector of numbers
numbers <- c(1,2,3,4,5,6,7,8,9,0)
numbers
print(numbers)

#create a vector of letters
ltrs = c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h')
ltrs
print(ltrs)

#concatenation the both above
mixed_vec <- c(numbers, ltrs)
#vector mixed_vec has coerced the numbers to character
print(mixed_vec)
class(mixed_vec)

mixed_vec <- c(ltrs, numbers)
print(mixed_vec)
class(mixed_vec)


##one dimesional objects
num = 1:10
class(num)

#numeric vector, its has a float, 10.5
num  = c(1:10, 10.5)
class(num)
num

#character vector
ltrs = letters[1:10]
class(ltrs)
ltrs

#factor vector
factor = as.factor(ltrs)
class(factor)
factor


#explicit coercion 
#objects can be explicity coerced forn one class to another using as. functions
x <- 0:10
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

#if R cannot figure out how to coerce an object, this can result in NAs being produced
c <- c('a', 'b', 'c')
class(c)
as.numeric(c)
as.logical(c)
as.complex(c)

test <- c('music track', 100, 5)
test
class(test)
typeof(test)

test<- list('music', 100, 5)
test
is.list(test)
test <- c('music', 100, 5)
is.list(test)

test<- list('music', 100, 5)
names(test) <- c('product', 'price', 'unid') 
print(test)

prod_category <- list(product = 'music', price = 100, unit = 5)
prod_category
prod_category[[2]]
str(prod_category)

similar_prod <- list(product = 'films', price = 50, unit = 40)
similar_prod

unit_prod <- list(product = 'music', price = 100, unit = 5, similar = similar_prod)
unit_prod
unit_prod[[2]]
unit_prod[[4]]
unit_prod$unit


#Create a vector with odd values b/w 1 to 20

odd_value<-seq(1,20,2)
odd_value

#Create a vector with even values b/w 1 to 20

even_value<-seq(2,20,2)
even_value

#Create vector with 10 odd values starting from 20

vec10<-seq(from=21,by=2,length.out=10)
vec10

# Naming your vectors using names() function

temperature <- c(72,71,68,73,69,75,71)
temperature

names(temperature) <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
temperature

# Another way to name your vectors

days <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
temperature1 <- c(40,45,60,30,36,12,29)
names(temperature1) <- days
temperature1

# One more way to give names to each price values
price<-seq(100,220,20)
names(price)<-paste0("p",1:7)
price

# Basic operation on Vectors

v1 <- c(2,1,4)
v2 <- c(5,6,7)

# Add 2 vectors
v1+v2

# Subtract 2 vectors
v2-v1

# Multiply 2 vectors
v1*v2

# Divide 2 vectors
v1/v2

# Using basic maths functions with vectors
v1

sum(v1) # Add the values in a vector
sd(v1) # Finds the standard deviation
var(v1) # To display the variance
prod(v1) # Give the product of the vector values
max(v1) # Returns the maximum value 
min(v1) # Returns the minimun value

# Comparing vectors using comparision operators

v1 <- c(19,12,45)
v2 <- c(19,20,30)

v1<v2
v1>v2
v1!=v2
v1==v2

v <- c(1,2,3,4,5)
v<3

# Vector slicing and indexing

price1<-seq(550,670,20)
names(price1)<-paste0("p",1:7)
price1

#1. Using index position
price1[3]
price1[3:4]
price1[c(1,4)]
price1[c(2,6)]

#2. Indexing with names
price1[c("p3")]
price1[c("p3","p4","p7")]
price1["p3"]

#3.Using logical position
price1[c(T,F,T,T,F,F,F)]
price1[c(T,F)]

#4.Using exclude position method
price1[-2]
price1[c(-2,-5)]

#5. Using comparision operator
price1[price1>600]

filter <- price1>600
price1[filter]
