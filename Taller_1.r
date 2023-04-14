setwd('Desktop/WD/Taller')
library(dplyr)
WM <- read.csv('WM.csv')
WM <- mutate_all(WM,as.numeric)
str(WM)
EDAD <- WM$Edad..meses.
PA <- WM$PA
CO <- WM$CO
SEXO <- WM$Sexo

plot(EDAD,PA, col=as.factor(SEXO), pch=19)
abline(lm(PA~EDAD))
legend("topleft", legend=c("niñas","niños"), pch=16, col=unique(as.factor(SEXO)))

plot(EDAD,CO, col=as.factor(SEXO), pch=19)
abline(lm(CO~EDAD))

rho1 <- cor.test(WM$Edad..meses.,WM$PA, use = "complete.obs")
rho1$estimate

rho2 <- cor.test(WM$Edad..meses.,WM$CO, use = "complete.obs")
rho2$estimate
