## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
   # set the value of the vector
   # get the value of the vector
   # set the value of the mean
   # get the value of the mean
makeCacheMatrix <- function(x = matrix()) {
        i = NULL
  set = function(y) {
          x <<- y
          i <<- NULL
  }
  get = function() x
  set_inverse = function(inverse) i <<- inverse
  get_inverse = function() i
  list(set = set,
       get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)

}


## Write a short comment describing this function
# Calculation of the inverse matrix of previous function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i = x$get_inverse()
  if (!is.null(i)) {
          message("Get cached data")
          return(i)
  }
  Data = x$get()
  i = solve(Data, ...)
  x$set_inverse(i)
  i
        
}
