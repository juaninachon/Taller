library(stats)
library(dplyr)

WM <- read.csv('WM.csv')
WM <- mutate_all(WM,as.numeric)
mutate_if?
str(WM)

class(MW$PA)
boxplot(WM$PA~WM$Sexo)

plot(as.numeric(WM$Edad..meses.),as.numeric(WM$PA), col=as.factor(WM$Sexo), pch=19)


table(WM$Sexo[!is.na(WM$PA)])

cor(WM[c("Sexo","PA")],)
