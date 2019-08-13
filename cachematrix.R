## Functions for caching a matrix and its inverse
## - makeCacheMatrix interacts with the cached environment
## -

## Input: a matrix, default, an empty matrix
## Returns a list of functions for getting and setting
## a matrix and its inverse in a cached environment
makeCacheMatrix <- function(x = matrix()) {

    ## initialize the matrix inverse
    my_inverse <- NULL

    ## create a function for storing the original martrix
    set <- function(y) {
        x <<- y
        my_inverse <<- NULL
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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
