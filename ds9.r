library(ggplot2)
library(cluster)
library(factoextra)  
data(iris)
fviz_nbclust(iris[, 1:4], kmeans, method = "silhouette") + labs(title = "Elbow Method for Determining Optimal Number of Clusters")
set.seed(123)
kmeans_result <- kmeans(iris[, 1:4], centers = 3)
iris$Cluster <- as.factor(kmeans_result$cluster)
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Cluster)) + geom_point() + labs(color = "Cluster")


