getwd()
albumSales = read.table("./data/Album_Sales_2.dat",header=T)

View(albumSales)
albumModel = lm(formula = sales ~ adverts + airplay+attract, data=albumSales)

summary(albumModel)

#squared residuals
SS.R.1 = sum((albumSales$sales-predict(albumModel))^2)
SS.R.2 = sum(albumModel$residuals^2)

SS.R.1 - SS.R.2

SS.R = SS.R.1

#Multiple R-Squared
SS.M = sum( (mean(albumSales$sales) - predict(albumModel))^2)
SS.T =  sum( (mean(albumSales$sales) - albumSales$sales)^2)
R.squared = SS.M/SS.T

R.squared

#Residual Standard Error
df = (nrow(albumSales)-length(albumModel$coefficients))
R.std.error = sqrt(SS.R / df)

#Adjusted R-Squared
p = length(albumModel$coefficients)-1
n = nrow(albumSales)
R.squared.adjusted = R.squared - (1-R.squared)*p/(n-p-1)

#F-Statistics
dfe = nrow(albumSales) -(length(albumModel$coefficients))
dfm = length(albumModel$coefficients)-1

F.statistis = (SS.M / dfm) / (SS.R / dfe)
writeLines(c(sprintf("Residual standard error: %.2f on %d degrees of freedom", R.std.error, df),
sprintf("Multiple R-squared: %.4f, Adjusted R-squared:  %.4f",R.squared,R.squared.adjusted),
sprintf("F-statistic: %.1f on %d and %d DF",F.statistis,dfm, dfe)))

#Summary
summary(albumModel)
