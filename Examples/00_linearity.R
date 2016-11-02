data = read.csv('./data/gdp-co2.csv')
View(data)

#Plotting two timeseries
plot(x=data$Years, y=data$GDP, type="l")
lines(x=data$Years,y=data$"CO2")

#setting a custom limit for the y-Axis
ylim = c(min(data$"CO2", data$GDP),max(data$"CO2", data$GDP))
plot(x=data$Years, y=data$GDP, type="l", ylim=ylim)+lines(x=data$Years,y=data$"CO2")

#normalizing the data betwenn 0..1
data$GDP_normalized = (data$GDP-min(data$GDP))/(max(data$GDP)-min(data$GDP))
data$CO2_normalized = (data$CO2-min(data$CO2))/(max(data$CO2)-min(data$CO2))

ylim = c(0,1)
plot(x=data$Years, y=data$GDP_normalized, type="l", ylim=ylim)+lines(x=data$Years,y=data$CO2_normalized)


#Plotting GDP against CO2 using the raw and the normalized data
dev.off()
par(mfrow=c(2,1))

plot=plot(x=data$GDP, y=data$CO2, type="p")
plot+abline(lm(data$CO2 ~ data$GDP))
plot+mtext(paste("cov: ",cov(data$GDP,data$CO2)),side=3)


plot=plot(x=data$GDP_normalized, y=data$CO2_normalized, type="p")
plot+abline(lm(data$CO2_normalized ~ data$GDP_normalized))
plot+mtext(paste("cov: ",cov(data$GDP_normalized,data$CO2_normalized)),side=3)
