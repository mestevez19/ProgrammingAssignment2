## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(matriz = matrix()) {
  inv<-NULL
 
  set <- function(y = matrix()) {                      
    x <<- y*
    inv <<- NULL
  }
  get <- function() matriz
  setinv <- function(solve) {
    inv <<- solve
   
  }
  getinv <- function() {
   inv
    }
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(matriz, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- matriz$getinv()
  if(!is.null(inv)) {
   message("getting inverse matrix cache data")
   return(inv)
  }
  data <- matriz$get()
  inv <- solve(data, ...)
  matriz$setinv(inv)
  inv
}
