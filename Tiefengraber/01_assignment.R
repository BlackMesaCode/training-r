1 + 1 
5 < 4
6 == 7
T == TRUE
F == FALSE
FALSE == TRUE
"ÜBUNG" == "FAD"


x <- 12
x

13 -> x
x

x = 12
x

#nope
12 =x
x

#local and global assignment
localAssignFunction = function(){
  x = 13
}

globalAssignFunction = function(){
  x <<- 13
}

localAssignFunction()
x

globalAssignFunction()
x
