#x=y
y = rep(1,10)
y
x = rep(1,10)

#sets the plotting (par) settings to default values
dev.off()
plot = plot(x=y, y=x, pch=3)
plot+text(mean(y),max(x),paste("cov: ",cov(y,x)))
plot+text(mean(y),max(x),paste("\n \nPearson CorrCoef: ",cor(y,x, method="pearson")))

#Warning message:
#In cor(y, x, method = "pearson") : the standard deviation is zero
#Look at the formula to figure out why we get an error



y = seq(1:10)
x = rev(y)
dev.off()
plot(x=y, y=x, pch=3)
plot+text(mean(y),max(x),paste("cov: ",cov(y,x)))
plot+text(mean(y),max(x),paste("\n \nPearson CorrCoef: ",cor(y,x, method="pearson")))




#Correlation Coefficient vs Covariance
y = seq(1:10)
x = seq(1:10)

plot = plot(x=y, y=x, pch=3)
#text is positioned in data-coordinates
plot+text(mean(y),max(x),paste("cov: ",cov(y,x)))
plot+text(mean(y),max(x),paste("\n \nPearson CorrCoef: ",cor(y,x, method="pearson")))


plot.new()
y *=10
y = y *10
plot(x=y, y=x, pch=3)
plot+text(mean(y),max(x),paste("cov: ",cov(y,x)))
plot+text(mean(y),max(x),paste("\n \nPearson CorrCoef: ",cor(y,x, method="pearson")))

#y*=1000
y = y *1000
plot = plot(x=y, y=x, pch=3)
plot+points(x, pch=2)
plot+text(mean(y),max(x),paste("cov: ",cov(y,x)))
plot+text(mean(y),max(x),paste("\n \nPearson CorrCoef: ",cor(y,x, method="pearson")))





#creating Vector and filling it with random numbers
?sample
y=sample(101,500,T)
x=sample(101,500,T)

plot(x=x,y=y)

plot(x=x,y=y, pch=3)+points(x, pch=2)

#Computing Pearson using Z-Transformation
mean(x)
sd(x)
xZScores = (x-mean(x))/sd(x)
sd(xZScores)
summary(xZScores)

yZScores = (y-mean(y))/sd(y)
sd(yZScores)
summary(yZScores)

paste("CovZScore",cov(xZScores, yZScores))
paste("CovSum",sum(xZScores*yZScores) / (length(yZScores)-1))
paste("PearsonCor",cor(x,y,method="pearson"))

#using variance instead of SD as the denominators -> no real Z-Transform
xZScores = (x-mean(x))/var(x)
yZScores = (y-mean(y))/var(y)

mean(xZScores)
mean(yZScores)
?cor
cor(xZScores,yZScores)

plot = plot(x=y, y=x, pch=3)
plot+text(mean(y),max(x),paste("cov: ",cov(y,x)))
plot+text(mean(y),max(x),paste("\n \nPearson CorrCoef: ",cor(y,x, method="pearson")))


#using margin Text to place text outside the plotting-area
?mtext

plot(x=x,y=y, pch=3)+points(x, pch=2)
plot+mtext(paste("cov: ",cov(y,x)),side=3)
plot+mtext(paste("Pearson CorrCoef: ",cor(y,x, method="pearson")),side=3)


#using lines to place one line below the other
plot = plot(x=y, y=x, pch=3)
plot+mtext(paste("cov: ",cov(y,x)),side=3,line=1)
plot+mtext(paste("Pearson CorrCoef: ",cor(y,x, method="pearson")),side=3, line=0)
