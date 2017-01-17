
#source("RcppExports.R")

goertzel <- function( signal, k) {
  N <- length(signal)
  alpha = 2*cos(2*pi*k/N)
  w <- exp(2i*pi*k/N)
  X <- goertzelCore(signal, alpha)
  if(length(k) == 1){
    return( w*X[2] - X[1])    
  }
  else {
    l <- length(X)/2
    return( w*X[(1:l)*2] - X[(1:l)*2 - 1])
  }
}