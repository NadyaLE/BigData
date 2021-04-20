download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv","filedown.csv")
library(data.table)
DT <- fread("filedown.csv")

f1 <- function(){
tapply(DT$pwgtp15,DT$SEX,mean)
}
f2 <- function(){
mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15)
}
f3 <- function(){
DT[,mean(pwgtp15),by=SEX]
}
f4 <- function(){
rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]
}
f5 <- function(){
sapply(split(DT$pwgtp15,DT$SEX),mean)
}
f6 <- function(){
mean(DT$pwgtp15,by=DT$SEX)
}
print(system.time(for(i in 1:10000) f1())["elapsed"])
print(system.time(for(i in 1:10000) f2())["elapsed"])
print(system.time(for(i in 1:10000) f3())["elapsed"])
print(system.time(for(i in 1:10000) f4())["elapsed"])
print(system.time(for(i in 1:10000) f5())["elapsed"])
print(system.time(for(i in 1:10000) f6())["elapsed"])
save.image("C:/RStudio/WorkDir/third1.RData")
savehistory("C:/RStudio/WorkDir/third1.Rhistory")
