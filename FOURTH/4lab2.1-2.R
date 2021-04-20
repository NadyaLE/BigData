setwd("C:/RStudio/WorkDir/FOURTH")
N = 20 # Число наблюдений (квартир)
M = 6 # Число факторов
Data = matrix(1:(N * (M + 1)), ncol = (M + 1))
X = matrix(1:(N * M), ncol = M)
Y = matrix(1:N, ncol = 1)
T = matrix(1:(M + 1) * (M + 1), ncol = (M + 1))
Teta = matrix(1:(M + 1), ncol = 1)
Data = read.csv("myflats.txt", sep = '\t')
colnames(Data)[1] <- 'totsquare'
X = Data[, 1:M]
Y = Data[, (M + 1)]
odin = vector(length = N, mode = 'numeric')
odin = rep(1, N)
X1 = matrix(1:(N * (M + 1)), ncol = (M + 1))
X1[, 1] = odin
for (i in 1:M) X1[, i + 1] = X[, i]
T1 = t(X1)
T = T1 %*% X1
library(MASS)
obr = ginv(T)
Teta = obr %*% T1 %*% Y
Teta = Teta[, 1]
print(Teta)
# ================================================================
# Введём данные нашей квартиры (на первое место сразу поставим
# единицу)
myx = c(1, 83,	64,	8,	10,	5.0, 500)
c
myX = matrix(myx, ncol = M + 1, byrow = TRUE)
tmyX = t(myX)
# Оценим стоимость нашей квартиры
myprice = Teta %*% tmyX
print(myprice)

Data1 = read.csv("myflats.txt", sep = '\t')

rm = cor(Data)
rm
Data = Data[,-2]
rm = cor(Data)
rm


regmodel1 = lm(price ~ -1 + totsquare + livesquare + floor + height + distcenter + distmetro, data = Data1)
summary(regmodel1)

regmodel = lm(price ~ -1 + totsquare + floor + height + distcenter + distmetro, data = Data)
summary(regmodel)

myflat =c(1, 83,	64,	8,	10,	5.0, 500)
myflat = data.frame(t(myflat))
colnames(myflat)<-c("totsquare","livesquare","floor","height","distcenter","distmetro")
newprice = predict(regmodel, myflat)

