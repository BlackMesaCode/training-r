#creating simple List
mySimpleList = list(1:3)
mySimpleList

mySimpleList = list(1,2,3)
mySimpleList

class(mySimpleList)
str(mySimpleList)

v=unlist(mySimpleList)
class(v)

#creating a list
num = c(1:100)
char = c("HANS","FRANZ","SEPP")
v = sample(c(0,1),5,replace = T)
v
bool = as.boolean(v)
bool = v == 1

myList = list(
  "num"=num,
  "char"=char,
  "bool"=bool
  )

myList

View(myList)

#element access
myList[1]
myList["num"]
myList[num]
myList$num


myList[[1]]

class(myList[[1]]) #returns a vector
class(myList[1]) #returns a list with a sinlge element

myList[c("num","bool")]

#removing
myList["num"] = NULL
myList
myList[["char"]] = NULL
myList



#lists to vectors
simpleList = list(1,3,5,3,5,6,5,7)
mean(simpleList)
mean(as.numeric(simpleList))
mean(unlist(simpleList))



#create empty list
emptyList = list()
emptyList$entry = c(1:123)

emptyList

#usage
mtcars
model = lm(mtcars$mpg~mtcars$cyl)
class(model)
mode(model)
