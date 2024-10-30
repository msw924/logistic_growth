#Script to plot data and model

growth_data <- read.csv("experiment")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

#these are the values estimated from the "fit linear model.R" - using linear models to find these values 
N0 <- 879
  
r <- 1.004e-02
  
K <- 6.000e+10

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')


