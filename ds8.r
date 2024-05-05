data <- iris[1:4]
cov_data <- cov(data)
eigen_data <- eigen(cov_data)
pca_data <- princomp( data, cor = FALSE)
eigen_data$values
pca_data$sdev^2
pca_data$loadings[,1:4]
eigen_data$vectors
summary(pca_data)
biplot(pca_data)
screeplot(pca_data, type="lines")
model2 = pca_data$loadings[,1]
model2_score <- as.matrix(data) %*% model2
library(class)
install.packages("e1071")
library(e1071)
mod1 <- naiveBayes(iris[,1:4], iris[,5])
mod2 <- naiveBayes(model2_score, iris[,5])
table(predict(mod1, iris[,1:4]), iris[,5])
table(predict(mod2, model2_score), iris[,5])

