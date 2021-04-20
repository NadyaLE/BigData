x<-c(3,1,NA,7,2,NA,8,NA,9,1,0)
bad<-is.na(x)
x[!bad]

x<- c("a", "b", NA, "d", NA, "f","r",NA,"ya")
y<-c(1,2,NA,5,NA,7,NA,29,31)
x
y
good <- complete.cases(x, y)
good
install.packages("caret")

emp.data <- data.frame(
emp_1 = c(3,1,NA,7,2,NA,8,NA,9,1,0),
salary = c(NA,515,611,729,NA,988,344,NA,102,53,NA),
num = c(34,15,NA,NA,5,56,NA,8,101,27,NA),
stringsAsFactors = FALSE
)

library(caret)
PredictionOfTheMean <- preProcess(emp.data, method = 'medianImpute')
data <- predict(PredictionOfTheMean, emp.data)

x<-c(2.633213, 2.654674, 2.746650, 2.657763, 2.525229, 2.549804, 2.537088, 1.974909, 1.838017, 1.791683, 1.782088,
1.664908, 1.689402, 1.688826, 1.661763, 1.734322, 1.744875, 1.710471, 1.735690, 1.800677, 1.607354, 1.896810,
2.294757)
y<-c(4.358015, 4.489513, 4.560919, 4.613810, 4.599738, 4.621614, 4.633119, 4.616862, 4.754681, 4.849953, 4.945791,
5.019631, 4.805033, 4.989170, 5.024305, 5.065325, 4.970247, 4.998086, 5.096887, 4.977657, 4.888269, 3.479053,
2.878145)
plot(x,y)
boxplot(x)
boxplot(y)
boxplot.stats(y)$out
ind <- which(y %in% boxplot.stats(y)$out)
ind
emissions <- data.frame(x=x[ind], y=y[ind])
plot(x,y,col='pink', pch=18, ylim=c(0,max(y)))
plot(x,y,col='blue', pch=18, ylim=c(0,max(y)))
points(emissions$x, emissions$y, col='red',pch=18)
x <- x[-ind]
y <- y[-ind]
boxplot(y)
plot(x,y,col='purple', pch=16, ylim=c(0,max(y)))


emp.data <- data.frame(
emp_id = c (1,2,2,3,4,5),
emp_name = c("Rick","Dan","Dan","Michelle","Ryan","Gary"),
salary = c(623.3,515.2,515.2,611.0,729.0,843.25),
start_date = as.Date(c("2012-01-01", "2013-09-23", "2013-09-23", "2014-11-15", "2014-05-11",
"2015-03-27")),
stringsAsFactors = FALSE
)

deduped.data <- unique(emp.data)

dedup.data <- duplicated(emp.data)

Data = data

Data[c(2,5,7,10),1] <- NA
Data[c(4,8,11),2] <- NA
Data[c(1,3),3] <- NA
summery(Data)

dataset <- mice(Data)

