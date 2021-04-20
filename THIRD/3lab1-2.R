setwd("C:/RStudio/WorkDir/THIRD")
A=read.table("abalone.txt",header=FALSE,sep=",")
View(A)
dlina=A[,2]
diam=A[,3]
plot(dlina, diam,col="blue",type="p",pch=16,
xlab="dlina",ylab="diam",main="Зависимость между длиной моллюска и
диаметром раковины")
myregress=lm(formula = diam ~ dlina)
abline(myregress,col="red",lwd="3")
myregress1=lm(formula = diam ~ -1 + dlina)
abline(myregress1,col="green",lwd="3")

setwd("C:/RStudio/WorkDir/THIRD/TestData")
x1=scan(file="X_1.txt")
y1=scan(file="Y_1.txt")
x2=scan(file="X_2.txt")
y2=scan(file="Y_2.txt")
x3=scan(file="X_3.txt")
y3=scan(file="Y_3.txt")
x4=scan(file="X_4.txt")
y4=scan(file="Y_4.txt")
x5=scan(file="X_5.txt")
y5=scan(file="Y_5.txt")


plot(x1, y1,col="red",type="p",pch=16,
xlab="x1",ylab="y1",main="Зависимость между X_1 и Y_1")
plot(x2, y2,col="green",type="p",pch=16,
xlab="x2",ylab="y2",main="Зависимость между X_2 и Y_2")
plot(x3, y3,col="blue",type="p",pch=16,
xlab="x3",ylab="y3",main="Зависимость между X_3 и Y_3")
plot(x4, y4,col="violet",type="p",pch=16,
xlab="x4",ylab="y4",main="Зависимость между X_4 и Y_4")
plot(x5, y5,col="orange",type="p",pch=16,
xlab="x5",ylab="y5",main="Зависимость между X_5 и Y_5")

regress1=lm(formula = y1 ~ x1)
regress2=lm(formula = y2 ~ x2)
regress3=lm(formula = y3 ~ x3)
regress4=lm(formula = y4 ~ x4)
regress5=lm(formula = y5 ~ x5)

plot(x1, y1,col="red",type="p",pch=16,
xlab="x1",ylab="y1",main="Зависимость между X_1 и Y_1")
abline(regress1,col="blue",lwd="3")

plot(x2, y2,col="green",type="p",pch=16,
xlab="x2",ylab="y2",main="Зависимость между X_2 и Y_2")
abline(regress2,col="orange",lwd="3")

plot(x3, y3,col="blue",type="p",pch=16,
xlab="x3",ylab="y3",main="Зависимость между X_3 и Y_3")
abline(regress3,col="violet",lwd="3")

plot(x4, y4,col="violet",type="p",pch=16,
xlab="x4",ylab="y4",main="Зависимость между X_4 и Y_4")
abline(regress4,col="green",lwd="3")

plot(x5, y5,col="orange",type="p",pch=16,
xlab="x5",ylab="y5",main="Зависимость между X_5 и Y_5")
abline(regress5,col="red",lwd="3")


