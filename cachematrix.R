## Functions for caching a matrix and its inverse
## - makeCacheMatrix interacts with the cached environment
## -

## Input: a matrix, default, an empty matrix
## Returns a list of functions for getting and setting
## an NxN matrix and its inverse in a cached environment
makeCacheMatrix <- function(x = matrix()) {
    if (ncol(x) != nrow) {
        message("Matrix not N x N; not stored")
        NULL
    }

    ## initialize the matrix inverse
    my_inverse <- NULL

    ## create a function for storing the original matrix
    set <- function(y) {
        if (ncol(y) == nrow(y)) {
            x <<- y
            my_inverse <<- NULL
        } else {
            message("Matrix not N x N; not stored")
        }

    }

    ## get the original matrix
    get <- function() x

    ## stores the matrix, which is calculated cacheSolve, below
    set_inverse <- function(new_inverse) my_inverse <<- new_inverse

    ## get the inverse previously calculated
    get_inverse <- function() my_inverse

    ## return the four functions above
    list(set = set, get = get, set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Return a matrix that is the inverse of 'x'
        my_inverse <- x$get_inverse()
        if (!is.null(my_inverse)) {
            message("getting cached data")
            return(my_inverse)
        }
        my_matrix <- x$get()
        my_inverse <- solve(my_matrix, ...)
        x$set_inverse(matrix)
        my_inverse
}
