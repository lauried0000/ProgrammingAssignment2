## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The following creates a matrix and, 
## calculates the inverse of this matrix,
## and then stores it in a cache called m.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

## Write a short comment describing this function

## This function checks to see if  the inverse of the matrix has been calculated
## If it has, it fetches the cached matrix, and returns it. 
cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}