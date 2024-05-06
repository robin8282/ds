library(datasets)
ir_data <- iris
head(ir_data)
str(ir_data)
levels(ir_data$Species)
sum(is.na(ir_data))
ir_data <- ir_data[1:100,]
set.seed(100)
samp <- sample(1:100,80)
ir_test <- ir_data[samp,]
ir_ctrl <- ir_data[-samp,]
install.packages("ggplot2")
library(ggplot2)
install.packages("GGally")
library(GGally)
ggpairs(ir_test)
y <- ir_test$Species; x <- ir_test$Sepal.Length
glfit<-glm(y~x, family ='binomial')
summary(glfit)
newdata <- data.frame(x=ir_ctrl$Sepal.Length)
predicted_val <- predict(glfit, newdata, type="response")
prediction <- data.frame(ir_ctrl$Sepal.Length, ir_ctrl$Species,predicted_val)
prediction

qplot(prediction[,1], round(prediction[,3]), col=prediction[,2], xlab='Sepal Length', ylab ='Prediction using Logistic Reg.')

