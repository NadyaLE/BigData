setwd("C:/RStudio/WorkDir/THIRD")
fiber_data <- read.csv('fiber.csv')
t <- fiber_data[,1]
strength <- fiber_data[,2]

plot(t, strength, col="orange",type="p",pch=16,
xlab="height",ylab="width",main="Зависимость между температурой и прочностью")
fiber_regress <- lm(formula = strength ~ t)
fiber_regress
abline(fiber_regress,col="blue",lwd="3")

r = cor(strength,t)

newt = c(t[3:20],t[31],t[38])
newstrength=predict(fiber_regress,data.frame(t = newt), level = 0.9, interval = "confidence")
newstr = newstrength[,1]
points(newt, newstr, col = "green", type = "p", pch = 16)

cor.test(t, strength)

