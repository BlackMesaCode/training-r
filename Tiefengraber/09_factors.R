iris

mode(iris$Species)
class(iris$Species)

iris$Species

summary(iris$Species)

nlevels(iris$Species)
levels(iris$Species)

as.numeric(iris$Species)

iris[iris$Species == "virginica",]




boxplot(iris)
boxplot(iris$Petal.Width~iris$Species)







#Plot Sepal.Width against Sepal.Length per Species








colors = rainbow(nlevels(iris$Species))
plot(x=iris$Sepal.Width, y=iris$Sepal.Length,type="n")
for(i in 1:nlevels(iris$Species)){
  points(x=iris[as.numeric(iris$Species)== i,"Sepal.Width"],y=iris[as.numeric(iris$Species)== i,"Sepal.Length"],pch=14+i,col=(colors[i]))
}



