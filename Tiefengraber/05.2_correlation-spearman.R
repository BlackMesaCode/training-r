#function for computing spearman based on the formulas 
mySpearman = function(x,y){
  xRank = rank(x)
  yRank = rank(y)
  if(anyDuplicated(x) + anyDuplicated(y) == 0){
    print("There aren't any duplicates")
    1-(6*sum((xRank -yRank)^2)/(length(x)*(length(x)^2-1)))
  }
  else{
    print("There are duplicates")
    sum((xRank-mean(xRank)) * (yRank-mean(yRank))) / sqrt(sum((xRank-mean(xRank))^2) * sum((yRank-mean(yRank))^2))
  }
}

x = c(2,7,1,150,3)
y = c(6,4,8,3,12)

#checking for duplicates (anyDuplicated(x) returns the number of duplicates in x)
anyDuplicated(x) + anyDuplicated(y)

#returns a vector of ranks. check the manual for the different approaches how to deal with ties / duplicates
xRank = rank(x)
yRank = rank(y)

#Plotting the raw values and the ranks of x and y
dev.off()
par(mfrow=c(2,1))
plot(x=x,y=y)
plot(x=xRank, y=yRank)

#adding Spearman calculated with the built-in function and as the pearson coeff based on the ranks
paste("Spearman",cor(x, y, method="spearman"))
paste("Pearson on Ranks",cor(xRank, yRank, method="pearson"))
mySpearman(x,y)


#computing spearman with duplicates
x = c(2,7,1,150,3)
y = c(6,4,6,3,12)

xRank = rank(x)
yRank = rank(y)

paste("Spearman",cor(x, y, method="spearman"))
paste("Pearson on Ranks",cor(xRank, yRank, method="pearson"))
mySpearman(x,y)
