## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverseMatrix = NULL
    
    	setMatrix <- function(y) {
      		originalMatrix <<- y
      		inverseMatrix <<- NULL
    	}
    
    	getMatrix <- function() {
      		originalMatrix
    	}
    
    	setInverseMatrix <- function(z) {
      		inverseMatrix <<- z
    	}
    
    	getInverseMatrix <- function() {
      		inverseMatrix
    	}
    
    	list(setMatrix = setMatrix, getMatrix = getMatrix, 
         	setInverseMatrix = setInverseMatrix, getInverseMatrix = getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	 #if the matrix m already has an inverse, just load it from cache
	  if (!is.null(m$getInverseMatrix()) ) {
    		message("Getting cached inverse")
    		return(m$getInverseMatrix())
  	  }

	  #if the matrix m does NOT have an inverse, then calculate it, and store it
  	   m$setInverseMatrix(solve(m$getMatrix()))
  	   m$getInverseMatrix()
}
