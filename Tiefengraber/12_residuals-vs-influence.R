pubs = read.table("./data/pubs.dat",header=T)

View(pubs)
plot(pubs)

pubModel.with.outlier = lm(mortality~pubs,data=pubs)
pubModel.wo.outlier = lm(mortality~pubs,data=pubs[1:(nrow(pubs)-1),])

abline(pubModel.with.outlier,col="red")
abline(pubModel.wo.outlier,col="blue")

segments(pubs$pubs,pubs$mortality,pubs$pubs,predict(pubModel.with.outlier),col="red")

pubModel.with.outlier$residuals

#Cook Distance
cooks.distance(pubModel.with.outlier)


plot(pubModel.with.outlier)




albumSales = read.table("./data/Album_Sales_2.dat",header=T)
albumModel = lm(formula = sales ~ adverts + airplay+attract, data=albumSales)


albumModel.investigation = albumSales



#standardized Resiudals
albumModel.investigation$residuals.standardized = rstandard(albumModel)


#greater than 2
albumModel.investigation$residuals.standardized.greater.2 = abs(albumModel.investigation$residuals.standardized) > 2
albumModel.investigation$residuals.standardized.greater.2.5 = abs(albumModel.investigation$residuals.standardized) > 2.5

View(albumModel.investigation)

#percentage
sum(albumModel.investigation$residuals.standardized.greater.2.5) / nrow(albumSales)
sum(albumModel.investigation$residuals.standardized.greater.2) / nrow(albumSales)

#which data points?
albumModel.investigation[which(albumModel.investigation$residuals.standardized > 2.0),c("adverts", "sales", "airplay", "attract", "residuals.standardized")]
albumModel.investigation[which(albumModel.investigation$residuals.standardized > 2.5),c("adverts", "sales", "airplay", "attract", "residuals.standardized")]



#Cooks Distance
albumModel.investigation$cook.distance = cooks.distance(albumModel)

#items ot investigate greater 1 ?
albumModel.investigation$cook.distance[which(albumModel.investigation$cook.distance > 0.5)] 

#Leverage / Hatvalues
albumModel.investigation$levereage =hatvalues(albumModel)

#hat mean
h.mean.1 = mean(albumModel.investigation$levereage)
h.mean.2 = length(albumModel$coefficients) / nrow(albumSales)

h.mean.1-h.mean.2

albumModel.investigation$levereage[which(albumModel.investigation$residuals.standardized > 2.0)] 
albumModel.investigation$levereage[which(albumModel.investigation$levereage > 2.0)] > 2*h.mean.2
albumModel.investigation$levereage[which(albumModel.investigation$levereage > 2.0)] > 3*h.mean.2

#summary
albumModel.investigation[which(albumModel.investigation$residuals.standardized > 2.0),c("adverts", "sales", "airplay", "attract", "residuals.standardized", "cook.distance", "levereage")]

#Plots
plot(albumModel)
m = lm(mtcars$mpg ~ mtcars$wt + mtcars$cyl + mtcars$disp)
plot(m)
