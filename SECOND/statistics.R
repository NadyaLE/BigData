X = read.table("turkiye.csv", sep=",") 
ptm <- proc.time()

for(i in 1:dim(X)[2])
{
  x = X[,i]
  n = length(x)
  min(x)
  max(x)
  S = sum(x)
  X2 = x%*%x
  MX = S/n
  X2 / n
  VX <- var(X)
  VX * n
  SVX <- sqrt(VX)
  SVX / MX
}

p = proc.time() - ptm
quantile(x,probs = c(0.25,0.5,0.75))
cor(iris[1:50,1:2])[1,2]

