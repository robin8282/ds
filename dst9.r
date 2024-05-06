install.packages("ggplot2") 
library(ggplot2) 
scatter <- ggplot(data=iris, aes(x = Sepal.Length, y = Sepal.Width))

scatter + geom_point(aes(color=Species, shape=Species)) +  theme_bw() + xlab("Sepal Length") + ylab("Sepal Width") + ggtitle("Sepal Length-Width")

ggplot(data=iris, aes(Sepal.Length, fill = Species)) + theme_bw() + geom_density(alpha=0.25) + labs(x = "Sepal.Length", title="Species vs Sepal Length")

vol <- ggplot(data=iris, aes(x = Sepal.Length)) 
vol + stat_density(aes(ymax = ..density.., ymin = -..density.., fill = Species, color = Species), geom = "ribbon", position = "identity") + facet_grid(. ~ Species) + coord_flip() + theme_bw()+labs(x = "Sepal Length", title="Species vs Sepal Length")

vol <- ggplot(data=iris, aes(x = Sepal.Width))
vol + stat_density(aes(ymax = ..density.., ymin = -..density..,  fill = Species, color = Species), geom = "ribbon", position = "identity") + facet_grid(. ~ Species) + coord_flip() + theme_bw()+labs(x = "Sepal Width", title="Species vs Sepal Width")


genx<-function(x){  runif(length(x), min(x), (max(x)))  }

random_df <- apply(iris[,-5], 2, genx) 
random_df <- as.data.frame(random_df) 

iris[,-5] <- scale(iris[,-5]) 
random_df <- scale(random_df) 

install.packages("factoextra")
library(factoextra)

res <- get_clust_tendency(iris[,-5], n = nrow(iris) - 1 , graph = FALSE)
res$hopkins_stat 

data(iris)
cluster_tendency <- get_clust_tendency(iris[,-5], n = nrow(iris) - 1)
hopkins_stat <- cluster_tendency$hopkins_stat



res <- get_clust_tendency(random_df, n = nrow(random_df)-1, graph = FALSE)
res$hopkins_stat 

