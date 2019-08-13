# cacheMatrixTests
# 
# http://mazamascience.com/WorkingWithData/?p=912
# install.packages("devtools)
# library(devtools)
# devtools::install_github("r-lib/testthat")
library(testthat)

source("cachematrix.R")

## Test the function with the default empty matrix
x = makeCacheMatrix()
# get the empty matrix
x$get()
# get the original inverse
x$get_inverse()
# set the inverse (incorrect inverse but testing this function)
x$set_inverse(matrix(c(1, 2, 3, 4), nrow = 2))
# get that matrix
x$get_inverse()
# set a new matrix, expect error
x$set(c(1, 2, 3, 4))



