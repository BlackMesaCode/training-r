?tapply


tapply(X=iris,FUN=mean)

tapply(X=iris, INDEX=iris$Species, FUN=mean)

tapply(X=iris$Sepal.Length, INDEX=iris$Species, FUN=mean)


res = tapply(X=iris$Sepal.Length, INDEX=iris$Species, FUN=sd)
class(res)
res


res = tapply(X=iris$Sepal.Length, INDEX=iris$Species, FUN=summary, simplify=FALSE)
class(res)

class(tapply(X=iris$Sepal.Length, INDEX=iris$Species, FUN=summary, simplify=F))

res = tapply(X=iris$Sepal.Length, INDEX=iris$Species, FUN=summary, simplify=T)

class(res)

with(iris,
     tapply(X=Sepal.Width,INDEX=Species,length)
)

