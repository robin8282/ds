lsfit(iris$Petal.Length, iris$Petal.Width)$coefficients

plot(iris$Petal.Length, iris$Petal.Width, pch=21,
bg=c("red","green3","blue")[unclass(iris$Species)], main="Iris Data", xlab="Petal length",
ylab="Petal width")

abline(Isfit(iris$Petal.Length, irisSPetal.Width)Scoefficients, col="black")

Im(Petal.Width ~ Petal.Length, data=iris)$coefficients

plot(iris$Petal.Length, iris$Petal.Width, pch=21,
bg=c("red","green3","blue")[unclass(iris$Species)], main="Iris Data", xlab="Petal length",
ylab="Petal width")

abline(lm(Petal.Width~Petal.Length, data=iris)$coefficients, col="black")

summary(Im(Petal.Width ~ Petal.Length, data=iris))

plot(iris$Sepal.Width, iris$Sepal.Length,pch=21,
bg=c("red","green3","blue")[unclass(iris$Species)], main="Iris Data", xlab="Sepal Width",
ylab="Sepal Length")

abline(lm(Sepal.Length~Sepal.Width, data=iris)$coefficients, col="black")

summary(Im(Sepal.Length ~Sepal.Width, data=iris))

plot(iris$Sepal.Width, iris$Sepal.Length,pch=21,
bg=c("red","green3","blue")[unclass(iris$Species)], main="Iris Data", xlab="Petal length",
ylab="Sepal length")

abline(lm(Sepal.Length~Sepal.Width, data=iris)$coefficients, col="black")

abline(Im(Sepal.Length ~Sepal.Width,
data=iris[which(iris$Species == "setosa"),]$coefficients, col="red")

abline(Im(Sepal.Length ~ Sepal.Width,
data=iris[which(iris$Species == "versicolor"),])$coefficients, col="green3")

abline(lm(Sepal.Length ~Sepal.Width,
data=iris[which(iris$Species == "virginica"),])$coefficients, col="blue")

lm(Sepal.Length ~Sepal.Width, data=iris[which(iris$Species="setosa"),])$coefficients

Im(Sepal.Length ~ Sepal.Width, data=iris[which(iris$Species == "versicolor"),])$coefficients

lm(Sepal.Length ~Sepal.Width, data=iris[which(iris$Species="virginica"),])$coefficients

lm(Sepal.Length ~Sepal.Width:Species +Species - 1, data=iris)$coefficients

summary(lm(Sepal.Length ~ Sepal.Width:Species +Species - 1, data=iris))

summary(step(lm(Sepal.Length~Sepal.Width * Species, data=iris)))

lm(Sepal.Length ~Sepal.Width:Species + Species - 1, data=iris)$coefficients

lm(Sepal.Length ~Sepal.Width:Species + Species, data=iris)$coefficients
