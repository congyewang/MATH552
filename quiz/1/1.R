library(tidyverse)


setwd("~/R/MATH552/quiz/1")
df <- read.csv("data1.csv", header = T)
m <- lm(y ~ x, data = df)
summary(m)

plot(df$x, df$y, type = "p")
lines(df$x, fitted(m))

x_t <- t(matrix(df$x))
y <- matrix(df$y)
y_hat <- fitted(m)
x_t%*%y_hat
x_t%*%y
df$x1 <- rnorm(100, mean = 56, sd = 199)
m1 <- lm(y ~ ., data = df)
X <- matrix(df$x, df$x1, nrow = 100, ncol = 2)
X %*% fitted(m1)
X %*% df$y
sum(fitted(m1))
sum(df$y)
