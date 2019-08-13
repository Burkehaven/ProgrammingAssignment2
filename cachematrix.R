## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # initialize the matrix inverse
  my_inverse <- NULL
  # create the set function
  set <- function(y) {
  x <<- y
  my_inverse <<- NULL
  }
  get <- function() x
  set_inverse <- function(new_inverse) my_inverse <<- new_inverse
  get_inverse <- function() my_inverse
  list(set = set, get = get, set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
