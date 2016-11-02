#creation
m()
matrix()
?matrix
matrix(-1,3,3)
matrix(1:20, 5,4)
matrix(1:20, 5,4, byrow=F)

x = c(1:3)

matrix(x,3,3,byrow=T)
matrix(x,3,3,byrow=F)

matrix(x,5,3,byrow=T)
matrix(x,5,3,byrow=F)


#matrix dim functions
length(m1)
nrow(m1)
ncol(m1)

dim(m1)

class(dim(m1))

dim(m1)[1]


m1 - matrix(1:length(m1),nrow(m1),ncol(m1))



#naming
m1 = matrix(1:20,4,4)
m1

rownames(m1)=c("eins","zwei","drei","vier")
m1

colnames(m1) = LETTERS[1:ncol(m1)]
m1


#Operations
m1 = matrix(1:20, 4,4)
m1

m1*2

t(m1)


#An n-by-n diagonal (identity) matrix
diag(5)

#Diagonal of m1
diag(m1)

m1 = matrix(2, 4,4)
m2 = matrix(3, 4,4)

#elementwise
m1*m2

#matrix
m1%*%m2






#matrix indices
m1[,1]
m1[1,]

class(m1[,1])
class(m1[,1,drop=F])
class(m1[,1,drop=T])

class(m1[1,])
class(m1[1,,drop=F])
class(m1[1,,drop=T])

m1[1:2,]
m1[,1:2]

m1[,c(1,3)]

m1[(m1[,2] == 7),]


#Manipulation
m1[,1]=1
m1
m1[1,]=c(1,2)
m1

m1[1,] = as.character(m1[1,])
m1

class(m1)
mode(m1)



#functions
cbind(m1,c(100:103))
rbind(m1,c(100:103))

sum(m1)
sum(m1[,2])

rowSums(m1)
colSums(m1)



#Some Plotting Fun
persp(m1)
persp(m1,expand=0.2)

m2 = matrix(0,10,10)
m2[4:6,4:6] = -1
persp(m2,expand=0.2)
m2 = m2*-100
persp(m2,expand=0.2)
persp(m2,expand=0.2, phi=35, theta=15)

volcano
persp(volcano,expand=0.2, phi=25, theta=15)
filled.contour(volcano)


image(m2)
image(volcano)

