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
The following function returns the inverse of the matrix. It first checks if the inverse has already been computed. If so, it gets the result and skips the computation. If not, it computes the inverse, sets the value in the cache via setinverse function.

cacheSolve <- function(x, ...) {
    inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}