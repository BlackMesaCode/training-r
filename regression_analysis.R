?lm
?predict

x = seq(1,10) * 1000
y = c(2,4,5,9,10,12,14,16,18,20) * 1000


plot(x,y)




model = lm(y ~ x)

residuals = resid(model)

predictions = predict(model)

rstandard(model)

sd(residuals)

residuals / sd(residuals)

summary(model)

