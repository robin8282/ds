library(ggplot2)
library(cluster)

data(iris)

set.seed(123)  
kmeans_result <- kmeans(iris[,1:4], centers = 3)

iris$Cluster <- as.factor(kmeans_result$cluster)

ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Cluster)) +
  geom_point() +
  labs(color = "Cluster")
