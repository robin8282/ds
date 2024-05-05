mistime2<-read.csv(file.choose(),header=T)
var.test(mistime2$time_g1,mistime2$time_g2,alternative=“two.sided")


satlevel<-read.csv(file.choose(),header=T)
anovatable<-aov(formula=satindex~dept, data=satlevel)
summary(anovatable)


satlevel<-read.csv(file.choose(),header=T)
anovatable<- aov(formula=satindex~dept+exp+dept*exp,data=satlevel)
summary(anovatable)
