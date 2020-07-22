## This is a functions that calculate the inverso of the matrix
## first execute variable<-makeCacheMatrix(matrix....)
##then execute cacheSolve(samematrixbefore...)


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
