#objects in my workspace
ls()
ls.str()

#hidden variables
.hidden ="Catch me if you can"
ls.str()
ls.str(all.names=T)

#removing variables
rm(x)
ls.str()

#Don't use that if someone else is gonna use your code
rm(list=ls()) 
ls.str()

#Mode vs class
x = 1
mode(x)
class(x)

#Last 100 Commands
history(100)

#Saving last Output
c(1:100)

x=.Last.value

x

#Packages
install.packages("ggplot2")

#List of installed Packages
library()

#List of loaded packages
search()
library(ggplot2)
search()
detach(package:ggplot2)
search()


#Attach / Detach
attach(iris)
Petal.Width
detach(iris)
Petal.Width


#Sys
Sys.Date()
Sys.getenv()

#Options
?options
x = 1/34534895345
x
options(scipen=999)
x
options(scipen=-100)

#Print
print(pi)
print(pi,digits=2)

print("Hello")
print("Hello",quote=F)

print(0.00001)

print(iris)
print(iris,digits=1)



