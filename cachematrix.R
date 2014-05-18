## Coursera Programming Assignment 2 - 18/05/14 by scubasteve22
## The aim of the 2 functions is to (1) create a matrix and then (2) produce the inverse of the matrix

## The overall aim is to show the application of the <<- function that can store outside the function and reduce the 
## need to re-calculate the inverse

## This function creates a square matrix, measured x*x and uses an exponential distribution to fill it randomly
## For ease of testing I call this function using a<-makeCacheMatrix(x)
makeCacheMatrix <- function(x = matrix()) {
  
  ## Using the x passed through the function we create a square matrix called "basematrix" using an exponential distribution
  basematrix<<-matrix(rexp(200, rate=.1), nrow=x, ncol=x)
  
  ## Here we create i (which will be the inverse matrix) but set it as a NULL as it hasn't yet been called
  i<<-NULL
  
  ## End of the function returns the matrix created
  basematrix
}


## This function produces and returns the inverse of the matrix created from cacheSolve, we use the <<- to check to see if it has been
## produced before to produce from cache or to create from scratch; I call this function from b<-cacheSolve(a)
cacheSolve <- function(x, ...) {
        
  ## The if line check to see if the i (inverse matrix) exists, if it does exist then it will return from cache otherwise will 
  ## pass over
  if(!is.null(i)) {
    
    ## Send an output message to notify the user
    message("getting cached data")
    
    ##Returns the calculated inverse
    return(i)
  }
  
  # If the inverse does not exist then it's calculated using the solve function
  i <<- solve(basematrix)
  
  ## Outputs the inverse matrix
  i
}
