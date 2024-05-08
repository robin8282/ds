titanic<-read.csv(file.choose(),header = T)
library(rpart)
model <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked,
               data = titanic,
               method = "class")
plot(model)
text(model, use.n = TRUE, all = TRUE, cex = 0.8)

library(tree)
model1<-tree(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked,
             data = titanic,,method="class")
plot(model1)
text(model1,all=TRUE,cex=0.6)


model1 <- tree(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked,
               data = titanic,
               method = "class",
               control = tree.control(nobs = nrow(titanic), mincut = 10))
plot(model1)
text(model1, all = TRUE, cex = 0.6)
