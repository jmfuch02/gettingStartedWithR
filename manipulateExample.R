library(manipulate)
manipulate(plot(1:x), x = slider(1, 100))

library(manipulate)
library(HistData)
data(Galton)
myHist <- function(mu){
    hist(Galton$child,col="blue",breaks=100)
    lines(c(mu, mu), c(0, 150),col="red",lwd=5)
    mse <- mean((Galton$child - mu)^2)
    text(63, 150, paste("mu = ", mu))
    text(63, 140, paste("MSE = ", round(mse, 2)))
}
manipulate(myHist(mu), mu = slider(62, 74, step = 0.5))
