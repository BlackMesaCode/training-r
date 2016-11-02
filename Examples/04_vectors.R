#creating vectors

#numeric
v1 = c(1,2,3) #short for combine
v1

class(v1)

#charater
v2 = c("Ich", "Du", "Er")
v2

class(v2)

#class?
v3 = c(1, "2", 3)
v3

class(v3)


#creating and filling vectors
1:100
5:9

#Sequence
?seq

seq(1,5)
seq(1,5,0.5)
seq(from=1, to=5, by=0.5)

#by = ((to - from)/(length.out - 1)
seq(from=1, to=5, length.out = 5)

#0.5 step ?
#seq(from=1, to=5, length.out = ???)


#Replicate
?rep
rep(x=1,times=10)
rep(x=1,lenght.out=10)
rep(x=1,length.out=10)

rep(1:4,2)
rep(1:4,each=2)
rep(1:4,c(2,1,2,1))

x = factor(LETTERS[1:4])
names(x) = LETTERS[1:4]

#Sample
sample(x=1,size=10,replace = F)

sample(x=c(1:10),size=10, replace = F)
sample(x=c(1:10),size=10, replace = F)
sample(x=c(1:10),size=10, replace = F)

sample(x=c(1:10),size=10, replace = T)
sample(x=c(1:10),size=10, replace = T)
sample(x=c(1:10),size=10, replace = T)


sample(x=c(1:100),size=10, replace = F, prob = c(1:100))
sample(x=c(1:100),size=10, replace = F, prob = c(1:100))
sample(x=c(1:100),size=10, replace = F, prob = c(1:100))

sample(x=c(1:100),size=10, replace = F, prob = c(100:1))
sample(x=c(1:100),size=10, replace = F, prob = c(100:1))
sample(x=c(1:100),size=10, replace = F, prob = c(100:1))


#Names
x = c(1:4)
x

LETTERS
names(x) = LETTERS[1:4]

names(x)
x
View(x)

x[1]

x["A"]

#vector computations
x = 1:10
x
x+10
x*10

x^2
2^x

y = 1:10

x*y

#Recycling Rule
x = 1:5
y = 1:10

x + y


View(cbind(x,y,x+y))
View(cbind(x,y,x*y))




#vector comparisons
x= 1:10
x == 1
x == c(1,2)

x > 5
x != 3



#vector functions
length(x)

nrow(x)
dim(x)

sqrt(x)
sqrt(sum(x))

sin(x)


#vector elements
x[0]
x[1]

#element manipulation
x[0]="sdfd"
x
class(x)

x[0] = 1
x
class(x)

#doesn't work
x[1] = NULL



#casting
x = as.numeric(x)
x

#indexing
x[2:5]
x[c(2:5)]
x[c(1,2,7:10)]
x[-1]
x[c(-3:-1)]
x[-(1:3)]
x[-c(3:1)]
x[c(-1,1:5)]

x[3:length(x)-1]
x[3:(length(x)-1)]

x[x > 4]
x[x > mean(x)]
x[x%%2 == 0]

x[2:4] = 0

x
x[-10] = 1
x

#any, all, which, match

x = 1:100

any(x >10)
any(x >100)

all(x>0)

which(x > 5 & x < 10)

y = 1:10

match(x,y)
x %in% y


#combining vectors
x = 1:10
y = 11:20
c(x,y)

append(x=x,values=y)

append(x=x, values=y, after=3)





#plotting
x=sample(c(5000:10000),3,F)/100
x

names(x) = LETTERS[1:length(x)]

plot(x)
?plot
plot(x,type="h")
plot(x,type="s")

barplot(x)



#NA
x = x(1:10)
x[3] = NA
?NA

sum(x)
sum

sum(x, na.rm=T)

