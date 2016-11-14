## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##this assignment is to create functions to cache the inverse of a matrix

##makeCacheMatrix is the function where the Matrix object can cache it's inverse

makeCacheMatrix <- function(x = matrix()) {
  cache <- NULL
  
  setMatrix <- function(newValue) {
    x <<- newValue
    cache <<- NULL
  }
  getMatrix <- function() {
    x
  }
  cacheInverse <-function(solve) {
    cache <- solve
  }
  getInverse <- function() {
    cache
  }
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function

##this function takes the above function and finds the inverse of what was calculated

cacheSolve <- function(x, ...) {
  inverse <- x$getInverse()
  if(!is.null(inverse)) {
    message("cached data populating")
    return(inverse)
  }
  data <- x$getMatrix()
  inverse <- solve(data)
  x$cacheInverse(inverse)
  
  inverse
}

##Test Out the functions
a <- makeCacheMatrix(matrix(c(1,5,12,13), nrow = 2, ncol = 2) )

summary(a)

a$getMatrix()

cacheSolve(a)
