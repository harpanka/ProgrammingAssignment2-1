## Put comments here that give an overall description of what your
## Below are two functions that are used to create a special object
# that stores a matrix and cache's its inverse.

## The first function, makematrix creates a matrix which sets the components of the matrix
# and then sets and gets the inverse of the matrix.




makeMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}




## This function calculats the inverse of the matrix created by earlier function. If the inverse is calcuated, it gets it from the cache , 
#Otherwise, it calculates the inverse of the matrix and sets the value of the matrix in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matx <- x$get()
  m <- solve(matx,...)
  x$setInverse(m)
  m
}


