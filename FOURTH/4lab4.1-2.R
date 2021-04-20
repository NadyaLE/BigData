N = 150 # Число наблюдений 
M = 5 # Число факторов
Data = matrix(1:(N * (M + 1)), ncol = (M + 1))
X = matrix(1:(N * M), ncol = M)
Y = matrix(1:N, ncol = 1)
T = matrix(1:(M + 1) * (M + 1), ncol = (M + 1))
Teta = matrix(1:(M + 1), ncol = 1)
Data = read.csv("fish.csv")[, 2:7]
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
myx = c(1, 290, 23.1, 26.3, 31.2, 12.4800)
myx
myX = matrix(myx, ncol = M + 1, byrow = TRUE)
tmyX = t(myX)
# Оценим ширину
mywidth = Teta %*% tmyX
print(mywidth)

Data1 = read.csv("myflats.txt", sep = '\t')

rm = cor(Data)
rm
Data = Data[,-2]
rm = cor(Data)
rm

datafish <- read.csv('fish.csv')
colnames(datafish) <- c("Species","Weight", "Length1", "Length2", "Length3", "Height", "Width") 
regressfish <- lm(Width ~ Weight + Length1 + Length2 + Length3 + Height, data=datafish)
summary.lm(regressfish)


exfish=c( 290, 23.1, 26.3, 31.2, 12.4800)
myfish=data.frame(t(exfish))
colnames(myfish)<-c("Weight", "Length1", "Length2", "Length3", "Height")
newwidth = predict(regressfish, myfish)



exfish=c( 340,	23.9,	26.5,	31.1,	12.3778)
myfish=data.frame(t(exfish))
colnames(myfish)<-c("Weight", "Length1", "Length2", "Length3", "Height")
newwidth = predict(regressfish, myfish)
newwidth

exfish=c( 363,	26.3,	28.1,	33.5,	12.73)
myfish=data.frame(t(exfish))
colnames(myfish)<-c("Weight", "Length1", "Length2", "Length3", "Height")
newwidth = predict(regressfish, myfish)
newwidth

exfish=c( 430,	26.5,	28.1,	34,	12.444)
myfish=data.frame(t(exfish))
colnames(myfish)<-c("Weight", "Length1", "Length2", "Length3", "Height")
newwidth = predict(regressfish, myfish)
newwidth

exfish=c( 450,	26.8,	29.7,	34.7,	13.6024)
myfish=data.frame(t(exfish))
colnames(myfish)<-c("Weight", "Length1", "Length2", "Length3", "Height")
newwidth = predict(regressfish, myfish)
newwidth

exfish=c( 500,	26.8,	29.7,	34.5,	14.1795)
myfish=data.frame(t(exfish))
colnames(myfish)<-c("Weight", "Length1", "Length2", "Length3", "Height")
newwidth = predict(regressfish, myfish)
newwidth

exfish=c(390,	27.6,	29.1,	3.2,	12.67)
myfish=data.frame(t(exfish))
colnames(myfish)<-c("Weight", "Length1", "Length2", "Length3", "Height")
newwidth = predict(regressfish, myfish)
newwidth

exfish=c(450,	27.6,	29.1,	35.1,	14.0049)
myfish=data.frame(t(exfish))
colnames(myfish)<-c("Weight", "Length1", "Length2", "Length3", "Height")
newwidth = predict(regressfish, myfish)
newwidth

exfish=c(500,	28.5,	30.7,	36.2,	14.2266)
myfish=data.frame(t(exfish))
colnames(myfish)<-c("Weight", "Length1", "Length2", "Length3", "Height")
newwidth = predict(regressfish, myfish)
newwidth

exfish=c(475,	28.4,	30.1,	36.2,	14.2628)
myfish=data.frame(t(exfish))
colnames(myfish)<-c("Weight", "Length1", "Length2", "Length3", "Height")
newwidth = predict(regressfish, myfish)
newwidth

exfish=c(500,	28.7,	30.1,	36.2,	14.3714)
myfish=data.frame(t(exfish))
colnames(myfish)<-c("Weight", "Length1", "Length2", "Length3", "Height")
newwidth = predict(regressfish, myfish)
newwidth





