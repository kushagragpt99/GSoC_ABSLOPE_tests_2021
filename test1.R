set.seed(10)
library(SLOPE)

fit_SLOPE = SLOPE(abalone$x, abalone$y, family = 'poisson')
plot(fit_SLOPE, main = "SLOPE")

fit_lasso = SLOPE(abalone$x, abalone$y, family = 'poisson', lambda = rep(1.2, dim(abalone$x)[2]))
plot(fit_lasso, main = "lasso")
                  