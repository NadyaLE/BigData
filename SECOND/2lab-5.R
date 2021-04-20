library(caret)
names(getModelInfo())
x <- matrix(rnorm(50*5), ncol=5)
y <- factor(rep(c("A", "B"), 25))
featurePlot(x,y)

install.packages("FSelector")
data("iris")
iris$Petal.Length <- as.factor(iris$Petal.Length)
Fselector::random.forest.importance(Petal.Length~., iris)


library(mlbench); data(Ozone)
library(randomForest)
na.omit(Ozone)->ozo
Boruta(V4~.,data=ozo,doTrace=2)->Bor.ozo
cat('Random forest run on all attributes:\n')
print(randomForest(V4~.,data=ozo))
cat('Random forest run only on confirmed attributes:\n')
print(randomForest(ozo[,getSelectedAttributes(Bor.ozo)],ozo$V4))
ggplot_missing <- function(x){
x %>%
is.na %>%
melt %>%
ggplot(data = .,
aes(x = Var2,
y = Var1)) +
geom_raster(aes(fill = value)) +
scale_fill_grey(name = "",
labels = c("Present","Missing")) +
theme_minimal() +
theme(axis.text.x  = element_text(angle=45, vjust=0.5)) +
labs(x = "Variables in Dataset",
y = "Rows / observations")
}
ggplot_missing(Ozone)
boxplot(Ozone)
Bor.bank <- TentativeRoughFix(Bor.ozo)
print(Bor.ozo)
plot(Bor.ozo)

