install.packages("ggplot2")
library(ggplot2)
data(iris)
model <- lm(Sepal.Length ~ Petal.Length, data = iris)
print(summary(model))
ggplot(iris, aes(x = Petal.Length, y = Sepal.Length, color = Species)) +
  geom_point() +  
  geom_smooth(method = "lm", se = FALSE, color = "black")  

model <- lm(Sepal.Length ~ Petal.Length + Petal.Width, data = iris)

ggplot(iris, aes(x = Petal.Length, y = Sepal.Length, color = Species)) +
  geom_point() +  
  geom_smooth(method = "lm", se = FALSE, color = "black") 

ggplot(iris, aes(x = Petal.Width, y = Sepal.Length, color = Species)) +
  geom_point() +  
  geom_smooth(method = "lm", se = FALSE, color = "black")  
