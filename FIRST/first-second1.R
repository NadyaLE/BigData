getwd()
setwd("C:/RStudio/WorkDir/FIRST")
getwd()
x = c(0,1)
install.packages('ggplot2')
library(ggplot2)

barplot(x,
col = "lightgreen",
main = "Гистограмма вектора х",
xlab = "Индексы вектора",
ylab = "Значения вектора",
names.arg = c("1","2"))
write.table(x,"result.txt",quote=FALSE, sep="\t", row.names=TRUE, col.names=TRUE)

svg("gis.svg")
barplot(x,
col = "lightgreen",
main = "Гистограмма вектора х",
xlab = "Индексы вектора",
ylab = "Значения вектора",
names.arg = c("1","2"))
dev.off()


m <- c("L", "S", "XL", "XXL", "S", "M", "L") m.f <- factor(m
m <- c("L", "S", "XL", "XXL", "S", "M", "L")
m.f <- factor(m)
as.numeric(m.f)
m <- 1:4
matr <- matrix(m, ncol=2, byrow=true)
m <- 1:4
matr <- matrix(m, ncol=2, byrow=TRUE)
matr
str(matr)
str(m)

w <- c(69, 68, 93)
names(w) <- c("Enny","Bonny","Lasly")
w
w["Enny"]
sex <- c("female","female","female")
sex.f <- factor(sex)
d <- data.frame(weight=w, sex=sex.f)
d
l <- list("R", 1:3, TRUE, NA, list("r", 4))
l

library(readxl)
getdata_data_DATA_gov_NGAP <- read_excel("getdata_data_DATA.gov_NGAP.xlsx",
col_names = FALSE, n_max = 95)
dat <- getdata_data_DATA_gov_NGAP[18:23,7:15]
colnames(dat) <- dat[1,]
dat <- dat[-1,]
res <- sum(dat$Zip*dat$Ext,na.rm = TRUE)
View(dat)

savehistory("C:/RStudio/WorkDir/first-second1.Rhistory")
