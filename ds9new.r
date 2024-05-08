library(factoextra)
library(ggplot2)
library(cluster)

fviz_nbclust(iris[1:4], kmeans, method = "wss")

set.seed(123)
kmeans_res <- kmeans(iris[,1:4], centers = 3)
summary(kmeans_res)
iris$cluster <- as.factor (kmeans_res$cluster)

fviz_cluster(kmeans_res, data = iris[,1:4])
