set.seed(10)
library(Rcpp)
library(SLOPE)

sourceCpp('test3.cpp')

p = 1e7
lambda = 0.5 * (p - (1:p)) + 1
y = rnorm(p, mean = p/2, sd = 2)

t = proc.time()
a1 = prox_sorted_L1(y, lambda)
proc.time() - t

t = proc.time()
a2 = t(FastProxSL1(y, lambda))
proc.time() - t