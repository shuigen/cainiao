x <- rnorm(15)
y <- x + rnorm(15)
predict(lm(y ~ x))
plot(x,y)
abline(lm(y ~ x))
plot(abline(lm(y ~ x)))
summary(lm(y ~ x))

new <- data.frame(x = seq(-3, 3, 0.5))
new.lm<-predict(lm(y ~ x), new, se.fit = TRUE)

plot(new.lm)
pred.w.plim <- predict(lm(y ~ x), new, interval = "prediction")
pred.w.clim <- predict(lm(y ~ x), new, interval = "confidence")

matplot(new$x, cbind(pred.w.clim, pred.w.plim[,-1]),
        lty = c(1,2,2,3,3), type = "l", ylab = "predicted y")


library(car)

install.packages("car")
scatterplotMatrix(x)