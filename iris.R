iris
iris

#Sepal.Length Sepal.Width

length(iris$Sepal.Length)
length(iris$Sepal.Width)

levels(factor(iris$Species))

for (specie in levels(factor(iris$Species))) {
  
  
  rows = iris[c(iris$Species == specie),"Sepal.Width"]
  x = 1:length(rows)
  
  plot(x = x, y = rows)
  
  print(lengths)
}
  

iris$Species