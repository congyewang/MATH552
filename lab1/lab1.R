library(tidyverse)
setwd("~/R/MATH552")

# Plot
dwaine  <- read.table("./datasets/dwaine.dat")
n <- nrow(dwaine)
names(dwaine) <- c("npeople","income","sales")
head(dwaine)
attach(dwaine)
plot(npeople,sales)
plot(income,sales)
plot(npeople,income)

# 
p <- 3
out <- lm(sales~npeople+income)
summary(out)
X <- cbind(1, dwaine$npeople, dwaine$income)
model.matrix(out)
vcov(out)
I <- diag(n)
residuals(out)
fitted.values(out)
qt(0.975, df)
anova(out)
anova(model1,model2)
