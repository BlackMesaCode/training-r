####################################################################  levels of measurement

# nominal -> factors in R

# oridnal > <

# cardinal 
# interval + - 
# ratio * /

####################################################################  basic types

# numeric (integer, double), complex, character, logical

is.numeric(23) # true
is.numeric(23L) # true
is.numeric(23.5) # true
is.numeric(23i) # false

is.double(23) # true
is.double(23.5) # true
is.double(23L) # false

is.integer(23L) # true


# mode vs class
# class gibt die Klasse an, in der die Datenstruktur implementiert ist
# mode gibt den eigentlich physischen Speichertyp an, dem die Elemente der Datenstruktur zugrunde liegen
class(installed.packages()) # matrix
mode(installed.packages()) # character


####################################################################  vectors

v1 = c(1,2,3,4) # c stands for combine
v2 = c("a", "b", "c")
v3 = c(TRUE, TRUE, FALSE)

v4 = c(1, "a", FALSE)  # heterogenous elements get converted to characters -> all vector elements must be of same type
mode(v4) # character

# selecting one element:
v1_one = v1[2]

# selecting multiple elements:
v1_multiple = v1[c(2,3)]  # c(2,3) is called an index vector


# naming the index within a vector
person = c("Max", "Mustermann")
names(person) = c("FirstName", "LastName")
person["FirstName"] # after naming the indices, we can access them by name

# telling R that our data is nominal
genders = c("M", "M", "F", "M", "F")
gender_factors = factor(genders) # 2 factor levels: "M" and "F"
is.factor(gender) # false
is.factor(gender_factors) # true


# we can define all possible nominal values, even if they are not present in the datasat, and we can also define custom names for each level
gender_factors_names = factor(genders, levels=c("F", "M", "B"), labels=c("Female", "Male", "Bi")) 



#################################################################### lists
# can contain varying types
# can be accesses by name aka hashmap / associative array

emptyList = list()
emptyList$firstEntry = 1:10

l1 = list(name = "Müller", age="50", country="Germany")
l1["name"]
l1$name

l2 = list(list(name = "Müller", age="50", country="Germany"), 
          list(name = "Maier", age="30", country="Switzerland"), 
          list(name = "Laura", age="25", country="Austria"))
l2_direct = l2[[1]]             # [[ returns only the person list
l2_slice = l2[2]                # returns the list of person 1, within a list
l2_multiple_slices = l2[c(1,3)] # returns the list of person 1 and 3, within a list

# we can also dive deeper:
name_of_second_person = l2[[2]][[1]] # returns "Maier"



####################################################################  matrices

# matrices are always two dimensional, whereas arrays can be multidimensional
# all elements /columns must be of same datatype in comparison to dataframe

emptyMatrix = matrix()

data = c("a", "b", "c", "d", "e", "g")
m1 = matrix(data, nrow = 2, ncol = 3, byrow = TRUE)

length(m1) # Anzahl der Elemente in der Matrix: 6
dim(m1) # row : cols

# appending rows and columns
person1 = c("Hans", 18)
person2 = c("Jochen", 20)
person3 = c("Laura", 25)
m2 = rbind(person1, person2)
m2 = rbind(m2, person3) # we cann append additional rows with rbind and additional columns with cbind

# naming columns and rows
colnames(m2) = c("Name", "Age") # also works with rownames ..

m2[1:4] == m2[c(1,2,3,4)]

# selecting matrix[row, column]
m2[1,] # selecting all columns of the first row
m2[,2] # selecting all rows of the second column

# select multiple rows/columns
m2[c(1,2),] # select all columns from row 1 and 2

# selection using colnames/rownames
m2[,"Age"]
# keine Dollar Notation bei Matrizen möglich


a = matrix(2,3,3);
b = matrix(3,3,3);
a*b # Elementweises multiplizieren
a%*%b # Matrizenmultiplikation

####################################################################  dataframes

# list of vectors with same length
# each vector represents a column


brands = c("Audi", "Mercedes", "BMW", "Volkswagen")
models = c("A8", "A", "3er", "T1")
power = c(300, 100, 140, 70)
types = factor(c("PKW", "PKW", "PKW", "LKW")) # we can explicitly set data type even though factor gets implicitly set for charater values

dataset = data.frame(brands, models, power, types)
# stringsAsFactors = True (default)

ncol(dataset) # 4
nrow(dataset) # 4

str(dataset)

# naming columns
# names(dataset) = c("Marke", "Modell", "Stärke", "Fahrzeugtyp")


# selecting columns by name

power_dataframe = dataset["power"]  # [ will return sliced list / data.frame -> we have to use [[
class(power_dataframe) # data.frame
power_vector = dataset[["power"]]
class(power_vector) # numeric vector

mean(power_vector)

# selecting rows / cols by index with [col]  or  [row, col]
first_row = dataset[1,] # we cant get it as a vector with [[ because the row might contain different data types which are not supported by vectors
class(first_row)
first_row

frist_row_list = as.list(first_row) # we can convert it to a list, which supports different data types


# convert lists to dataframes

as.data.frame(frist_row_list)


####################################################################  data generation


s = seq(1:100) # 1- 100
s2 = seq(1,100,2) # third argument: step size
?seq # length.out = gewünsche endlänge der sequence
rev(s) # reverse


rep(5, 100) # repeat value 5   100 times -> 5 5 5 5 5 5 ....
rep(1:4,2) # wiederholt 1-4  2 mal
rep(1:4,each=2) # wiederholt jedes element zwischen 1-4  2 mal
?rep

LETTERS[1:4] # uppercase alphabet
letters[1:4] # lowercase alphabet

help(sample)
sample(48,6,T) # erstes argument: menge  # zweites element: anzahl der ziehungen aus dieser menge
sample(48,6,T, prob = c(1:48)) # mit prob kann man die wahrscheinlichkeit des auftretens eines elements festlegen
# T = replacing gibt also an, ob werte doppelt gezogen werden dürfen

####################################################################  built in datasets

# http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html

mtcars
iris




