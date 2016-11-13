## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
The first function, makeCacheMatrix creates a vector, which is really a lit containing a function to 
- set the value of the Matrix
- get the value of the vector 
- set the value of the inverse 
- get the value od the inverse 
 

makeCacheMatrix <- function(x = matrix()) {
        yo <- NULL
        set <- function(y) {
                x <<- y
                yo <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) yo <<- inverse
        getInverse <- function() yo
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         yo <- x$getInverse()
  if (!is.null(yo)) {
    message("getting cached data")
    return(yo)
  }
  data <- x$get()
  yo <- solve(data)
  x$setInverse(yo)
  yo
}