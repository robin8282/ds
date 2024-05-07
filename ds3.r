mistime<-read.csv(file.choose(), header = T)
t.test(mistime$Time,alternative="greater", mu=90)

mistime<-read.csv(file.choose(), header = T)
t.test(mistime$Time_G1, mistime$Time_G2, alternative = "two.sided", var.equal = TRUE)

mistime<-read.csv(file.choose(), header = T)
t.test(time~group, alternative = "two.sided", data = mistime, var.equal = TRUE)

mistime<-read.csv(file.choose(), header = T)
t.test(mistime$Time_Before, mistime$Time_After, alternative = "greater", paired = TRUE)
