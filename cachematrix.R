## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


##This function will create a matrix object to cache the inverse of the matrix.
makeCacheMatrix <- function(x = matrix()) {
  
  i_n <- NULL
  set<- function(y){
    
    x <<- y
    i_n <<-NULL
  }
  get <- function() x
  setI_n <- function(inverse) i_n <<- inverse
  getI_n <- function() i_n
  
  list(set = set,
       get = get,
       setI_n = setI_n,
       getI_n = getI_n)
  
}
  
 



## Write a short comment describing this function

## This function can computes the inverse of the special "matrix" object created by the function 
##makeCacheMatrix above. 
##If the inverse has already been calculated then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i_n <- x$getI_n()
  if (!is.null(i_n)) {
    message("getting cached data")
    return(i_n)
  }
  mat <- x$get()
  i_n <- solve(mat, ...)
  x$setI_n(i_n)
  i_n
}

