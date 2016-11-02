
v = c(1:10)

lapply(X=v,FUN=sum)
?lapply



sapply(X=v, FUN=sum)

res=sapply(X=v, FUN=byFive)
class(res)
v*5

res = sapply(X=v, FUN=function(x,i){print(x)})


res = sapply(X=m,FUN=sum)
class(res)

res = lapply(X=m,FUN=sum)
class(res)
length(res)

v = c(1:5)

sapply(v,FUN=sum)

res = sapply(X=iris,FUN=sum)

iris[1,]

res = sapply(X=iris[,1:4],FUN=sum)
class(res)
res
names(res)
res = lapply(X=iris[,1:4],FUN=sum)
class(res)
res
