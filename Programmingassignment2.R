## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# - set the value of the matrix
# - get the value of the matrix
# - set the value of the inverse of the matrix
# - get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()){
                m <- NULL
                set <- function (y) {
                x <<- y
                m <<- NULL
                }
                get <- function() x
                setinv <- function (matrix.inverse) m <<- matrix.inverse
                getinv <- function () m
                list(set = set, get = get, 
                     setinv = setinv,
                     getinv = getinv)
}

                
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$getinv()
        m <- matrix.inverse(data, ...)
        x$setinv(m)
        m
}
