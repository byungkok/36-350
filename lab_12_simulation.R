generate_data() = function(n, p) {
  x = rnorm(100)
  y = x[1:10]
  covariates = matrix(x, nrow = n, ncol = p)
  responses = as.vector(y)
  
  return(list(covariates = covariates, responses = responses))
}  

#I think there is an error in return part. I tried so many different ways but couldn't solve.
