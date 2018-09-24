## Put comments here that give an overall description of what your functions do
# The Functions creates a special matrix that can cache its inverse 
#the Second function can solve the inverse 
#and if the inverse of the matrixs iverse already have been calculated get it from the cache
# 
## Write a short comment describing this function
#This function ascribes  a value to a matrix that makes it possible for the seconde matrix so invert the matrix of x 
#and get the cached resulst for older inverse calculation if the functions already have calculated the inverse 
#The Special matrix is a list of functions that:
#sets the value off the matrix 
#gets the matrixs values 
#sets the inverse value of the matrix
#gets the inverse value of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list( set = set, get = get, 
        setinverse = setinverse, 
        getinverse = getinverse)
 
} 

## Write a short comment describing this function
#Using the results from makechacheMatrix this function calculate the inverse of the matrix
#in the function is imbeted another function that returns inverse of the matrix
#if it is already has been  calculated 


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
 


