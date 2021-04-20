plot(dlina, diam,col="blue",type="p",pch=16,
xlab="dlina",ylab="diam",main="Зависимость между длиной моллюска и
диаметром раковины")
abline(myregress,col="red",lwd="3")

summary(myregress)
r=cor(dlina,diam)
r
n=length(dlina)
n
t=r/sqrt(1-r^2)*sqrt(n-2)
t
res = 1-pt(t,n-2)
res

newdlinas=c(0.35,0.22,0.81,0.64,0.73,0.12,0.47)
newdiams=predict(myregress,data.frame(dlina = newdlinas), level = 0.9, interval = "confidence")
newys=newdiams[,1]
newys
points(newdlinas, newys,col="green",type="p",pch=16)


