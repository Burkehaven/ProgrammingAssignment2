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


## Input:   A matrix object created by makeCacheMatrix()
##          Matrix assumed to be numeric, square, and invertible
## Returns: The inverse of the matrix.
##          If the inverse already calculated, it is returned from cache
##          Otherwise, calculated, stored, and returned
cacheSolve <- function(x, ...) {
        # get the inverse: either NULL, if not calculated, or a cached
        # version of the inverse
        my_inverse <- x$get_inverse()
        print(my_inverse)

        # if inverse already calculated, return it
        if (!is.null(my_inverse)) {
            message("getting cached data")
            return(x$get_inverse())
        }

        # Get the matrix
        my_matrix <- x$get()
        print(my_matrix)

        # Calculate the matrix (all assumed to be invertible)
        message("solving inverse")
        my_inverse <- solve(my_matrix, ...)
        print(my_inverse)

        # Cache the calculated inverse
        x$set_inverse(matrix)

        # return the inverse
        my_inverse
}
