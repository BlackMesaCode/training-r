#Crate DataFram
col1 = LETTERS[1:10]
col2 = seq(1:10)
col3 = sample(x=c(1:100),size = 10)

df = data.frame(col1, col2,col3)
df

df = data.frame("char"=col1, "seq"=col2,"sample"=col3)
df
str(df)

df = data.frame("char"=col1, "seq"=col2,"sample"=col3,stringsAsFactors = F)
df
str(df)


#from list
l = list(col1,col2,col3)
l

df = as.data.frame(l)
df
colnames(df) = c("char","seq","sample")
df



#Allocate empty dataframe
rowSize = 10

df = data.frame("char"=character(rowSize), "seq"=integer(rowSize),"sample"=integer(rowSize))
df

df[1,] = c("A",1,2)

df = data.frame("char"=character(rowSize), "seq"=integer(rowSize),"sample"=integer(rowSize), stringsAsFactors = F)
df

str(df)
df[1,] = c("A",1,2)

df

df[2,] = list("B",2,3)
df


#accessing elements
df = iris
str(df)

df[1,]
df[1,1]

df[,1]
df$Sepal.Length

df[df$Sepal.Length > 7,]
df[(df$Sepal.Length > 7) & (df$Petal.Length > 6.6),]

?subset
subset(x=df, subset=Sepal.Length > 7)
subset(x=df, subset=Sepal.Length > 7 & df$Petal.Length > 6.6)
subset(x=df, subset=Sepal.Length > 7 & df$Petal.Length > 6.6, select=c(Species))



#Data Editor
edit(df)
head(df)

df = edit(df)
head(df)


#with

with(iris,
     Petal.Length * Petal.Width
     )
