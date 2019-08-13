## Functions for caching a matrix and its inverse

## Input: an N X N square, numeric, invertible Matrix
##        in keeping with assignment directions, proper input
##        is assumed
## Returns: a matrix object for a square numeric matrix with four
##          methods
##          set: sets the matrix
##          get: sets the matrix
##          set_inverse: sets the matrix
##          get_inverse: sets the matrix
makeCacheMatrix <- function(x = matrix()) {
    ## initialize the matrix inverse
    my_inverse <- NULL

    ## create a function for storing a new matrix
    set <- function(y) {
            x <<- y
            my_inverse <<- NULL
    }

    ## get the matrix
    get <- function() x

    ## stores the matrix inverse, which is calculated elsewhere
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
