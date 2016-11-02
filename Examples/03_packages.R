#Packages
install.packages("ggplot2")
library(ggplot2)

#List of installed Packages
library()
installed.packages()
View(installed.packages())
installed.packages()[,c("Package","Version")]

#List of loaded packages
search()
detach(package:ggplot2)
search()