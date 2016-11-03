
myplot = plot.new()
for (specie in levels(factor(iris$Species))) {

  rows = iris[c(iris$Species == specie),"Sepal.Width"]
  x = 1:length(rows)
  
  myplot = myplot + plot(x = x, y = rows)
  
  
  print(lengths)
}

str(iris)

levels(factor(iris$Species))
setosa.width = iris[c(iris$Species == "setosa"),"Sepal.Width"]
petal.width = iris[c(iris$Species == "setosa"),"Petal.Width"]


par(mfrow=c(1,2)) # allows for the displaying of two plots side by side
plot(setosa.width, type="o", col="green", ylim=c(0,4))
lines(petal.width, type="p", col="red", ylim=c(0,1))  # lines() or points() will add to the existing graph
points(petal.width*2, type="o", col="yellow", ylim=c(0,1))  # lines() or points() will add to the existing graph

?plot
  

iris$Species
