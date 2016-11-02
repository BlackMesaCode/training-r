m = matrix(1:25,5,5)

m


?apply

#Exmapels

#MARGIN = 1: rows
apply(X=m,MARGIN=1, FUN=sum)
rowSums(m)

#MARGIN = 2: columns
apply(X=m,MARGIN=2, FUN=sum)
colSums(m)

#MARGIN = c(1,2): rows,columns
apply(X=m,MARGIN=c(1,2), FUN=sum)
colSums(m)
m


#using funtioncs
apply(X=m,MARGIN=c(1,2), FUN=function(x) print(x))

res = apply(X=m,MARGIN=c(1,2), FUN=function(x) print(x))

res = apply(X=m,MARGIN=1, FUN=function(x) print(class(x)))


v = c(1:10)
apply(X=v,MARGIN=1,FUN=function(x) print(x))


#using custom function
byFive = function(x){
  x*5
}

apply(X=m,MARGIN=1, FUN=byFive)

m
apply(X=m,MARGIN=c(1,2), FUN=byFive)

m*5



#multiple parameters
scale.inRange =function(x,newMin=0,newMax=1){
  newMin + (x-min(x))*((newMax -newMin) / (max(x)-min(x)))
}

scale.inRange(m[1,])


scale.inRange(m[1,],-1,1)


apply(X=m,MARGIN=1,FUN=scale.inRange,newMin=-12,newMax=13)



