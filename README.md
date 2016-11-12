# Tutorial

This is my tutorial repository.

# R-programming-Assignment2

# The first function, makeVector creates a special "vector", which is really a list containing a function to

# set the value of the vector
# get the value of the vector
# set the value of the mean
# get the value of the mean


# course exemple

makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}
...........

# fuction 

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
    }
get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set=set, get=get,setinverse=setinverse, getinverse=getinverse)
}
................

# The following function calculates the mean of the special "vector" created with the above function.

# exemple

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}

#fuction 

cacheSolve <- function(x, matrix) {
inv <- x$getinverse()
if(!is.null(inv)) {
        message("getting cached data.")
return(inv)
    }
data <- x$get()
inv <- solve(data)
x$setinverse(inv)
inv
}
.........
