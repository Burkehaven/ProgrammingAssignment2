# cacheMatrixTests

source("cachematrix.R")

# -----------------------------------------------------------------------------
#            Test: makeCacheMatrix()
# -----------------------------------------------------------------------------

## Test the function with the default empty matrix
x = makeCacheMatrix()
# get the empty matrix
x$get()
# get the inverse
x$get_inverse()
# set the inverse, even though wrong
x$set_inverse(matrix())
# get the inverse
x$get_inverse()

## Change the original matrix to a 1 by 1 matrix
x$set(matrix(c(1)))
# Get the inverse, still not set
x$get_inverse()
# Get the matrix
x$get()
# Calculate the inverse
my_inverse <- solve(x$get())
my_inverse
# set the inverse
x$set_inverse(my_inverse)
# get this inverse
x$get_inverse()

## Change the original matrix to a 4 x 4 matrix
new_matrix <- matrix(rnorm(16), ncol=4)
new_matrix
# Solve the matrix
new_inverse <- solve(new_matrix)
new_inverse
# set and then get the x to the new matrix
x$set(new_matrix)
x$get()
identical(x$get(), new_matrix)
# set and then get the new inverse
x$set_inverse(new_inverse)
x$get_inverse()
identical(x$get_inverse(), new_inverse)

# -----------------------------------------------------------------------------
#            Test: cacheSolve()
# -----------------------------------------------------------------------------

## Test the function with the default empty matrix
x = makeCacheMatrix()
# Get the matrix inverse, remember, NA's return more NA's
cacheSolve(x)
# get it again
for (i in 1:10) cacheSolve(x)

## Test the function with the default empty matrix
x = makeCacheMatrix(matrix(c(1, 2, 3, 4), nrow = 2))
# Get the matrix inverse, remember, NA's return more NA's
cacheSolve(x)
# get it again
cacheSolve(x)

# make sure keeps working
for (i in 1:20) {
  print(cacheSolve(x))
}

# test repeatedly
x$set(matrix(rnorm(36), nrow = 6))

for (i in 1:20) {
  print(cacheSolve(x))
}

