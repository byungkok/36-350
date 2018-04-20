#2a
generate_data() = function(n, p) {
  x = rnorm(100)
  y = x[1:10]
  covariates = matrix(x, nrow = n, ncol = p)
  responses = as.vector(y)
  
  return(list(covariates = covariates, responses = responses))
}  

#I think there is an error in return part. I tried so many different ways but couldn't solve.



#2b
model_select() = function(covariates, responses, cutoff) {
 lm1 = lm(response ~ covariates)
  #cutoffcovar = lm1[["p-values"]] =< cutoff
  
  
  #Not sure how to get covariates that correspond to cutoff condition. 
  
  lm2 = lm(responses ~ covariates[, c[cutoffcovar])
  
  return(lm2[["p-values"]])
} 
                                  

                                  
#2c
 run_simulation() = function (n_trials, n, p, cutoff) {
  results = replicate(n_trials, model_select(cutoffcovar, responses, cutoff))
  
  hist(results)
  
}

run_simulation(n_trials = 10, n = c(100, 1000,
    10000), p = 10, 20, 50, cutoff = 0.05)
                                  
                                  
#2d
results = replicate(n_trials, model_select(cutoffcovar, responses, cutoff))
  
  
  


make_plot() = function(datapath) {
  hist(results)
}                              
                                  
                                  
                                  
