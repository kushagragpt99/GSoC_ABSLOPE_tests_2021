# GSoC_ABSLOPE_tests_2021
Adding Adaptive Bayesian SLOPE (ABSLOPE) to the SLOPE Package


### Test 1: 
Install SLOPE and fit SLOPE and lasso (hint: see the `lambda` argument in `SLOPE()`) models using the SLOPE package to the `abalone` data set that comes with SLOPE using a Poisson model. Plot the results. How do the paths from SLOPE and lasso compare?  
The path for lasso decays much more quickly than SLOPE, suggestive of the uniform penaliazation in SLOPE as compared to better control and flexibility in SLOPE.

### Test 2:
Fork the SLOPE repository and build and check the package with `devtools::check()`  
Output in test2_out.txt.

### Test 3:
Write a function using RcppArmadillo that computes the proximal operator for SLOPE using Algorithm 3 (FastProxSL1) from Bogdan et al 2015 (SLOPE: adaptive variable selection via convex optimization). Compare the result with `SLOPE:::prox_sorted_L1()` (observe that this function uses a different algorithm than the one you are supposed to implement)  
THe output from both functions is the same. SLOPE:::prox_sorted_L1() takes 0.02 seconds for the task whereas the FastProxSL1 implementation takes 1.96 seconds.

### Test 4:
Medium: Submit a pull request that fixes the issue at https://github.com/jolars/SLOPE/issues/10.  
PR [#15](https://github.com/jolars/SLOPE/pull/15) submitted on 23 March.

### Test 5: 
write an R package using RcppArmadillo (as a backend) that uses proximal gradient descent or ADMM to solve SLOPE-penalized ordinary least squares regression. Make use of the function to compute the proximal operator that you implemented in the previous test. Compare your results to the SLOPE package (and make sure they match). Put the package on github.
