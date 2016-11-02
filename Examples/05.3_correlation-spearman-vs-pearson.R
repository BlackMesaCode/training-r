#Comparing spearman and pearson
y = seq(1:10)
x = seq(1:10)


dev.off()
plot = plot(x=y, y=x, pch=3)
plot+mtext(paste("Pearson: ",cor(y,x, method="pearson")),side=3, line=0)
plot+mtext(paste("Spearman: ",cor(y,x, method="spearman")),side=3, line=1)


x = rev(x)
plot = plot(x=y, y=x, pch=3)
plot+mtext(paste("Pearson: ",cor(y,x, method="pearson")),side=3, line=0)
plot+mtext(paste("Spearman: ",cor(y,x, method="spearman")),side=3, line=1)


x = rev(x)
x = x*0.75
plot(x=y, y=x, pch=3)
plot+mtext(paste("Pearson: ",cor(y,x, method="pearson")),side=3, line=0)
plot+mtext(paste("Spearman: ",cor(y,x, method="spearman")),side=3, line=1)


x = seq(1:10)
x = rev(x)

x[1] =x[1] * 100


plot = plot(x=y, y=x, pch=3)
plot+mtext(paste("Pearson: ",cor(y,x, method="pearson")),side=3, line=0)
plot+mtext(paste("Spearman: ",cor(y,x, method="spearman")),side=3, line=1)


x[2] = x[2]*100

plot = plot.new()
plot(x=y, y=x, pch=3)
plot+mtext(paste("Pearson: ",cor(y,x, method="pearson")),side=3, line=0)
plot+mtext(paste("Spearman: ",cor(y,x, method="spearman")),side=3, line=1)

x = seq(10:1)
x[3] = x[3]*100

plot = plot.new()
plot(x=y, y=x, pch=3)
plot+mtext(paste("Pearson: ",cor(y,x, method="pearson")),side=3, line=0)
plot+mtext(paste("Spearman: ",cor(y,x, method="spearman")),side=3, line=1)


#Examining the "Anscombe's Quartet of ‘Identical’ Simple Linear Regressions" regarding differences in the results of spearman and pearson
dev.off()
par(mfrow=c(2,2))
plot=plot(anscombe$x1, anscombe$y1, col="blue", pch=16,cex=2)
plot+mtext(paste("Pearson: ",cor(x=anscombe$x1,y=anscombe$y1, method="pearson")),side=3, line=0)
plot+mtext(paste("Spearman: ",cor(anscombe$x1,anscombe$y1, method="spearman")),side=3, line=1)
plot=plot(anscombe$x2, anscombe$y2, col="blue", pch=16,cex=2)
plot+mtext(paste("Pearson: ",cor(anscombe$x2,anscombe$y2, method="pearson")),side=3, line=0)
plot+mtext(paste("Spearman: ",cor(anscombe$x2,anscombe$y2, method="spearman")),side=3, line=1)
plot=plot(anscombe$x3, anscombe$y3, col="blue", pch=16,cex=2)
plot+mtext(paste("Pearson: ",cor(anscombe$x3,anscombe$y3, method="pearson")),side=3, line=0)
plot+mtext(paste("Spearman: ",cor(anscombe$x3,anscombe$y3, method="spearman")),side=3, line=1)
plot=plot(anscombe$x4, anscombe$y4, col="blue", pch=16,cex=2)
plot+mtext(paste("Pearson: ",cor(anscombe$x4,anscombe$y4, method="pearson")),side=3, line=0)
plot+mtext(paste("Spearman: ",cor(anscombe$x4,anscombe$y4, method="spearman")),xside=3, line=1)
