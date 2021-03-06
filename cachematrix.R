## Create Inverse of a given matrix using two functions

## An object to cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
   i <- NULL
 
   set <- function( matrix ) {
          m <<- matrix
          i <<- NULL
}

    
    get <- function() {
    	
        ## Return matrix
    	m
    }

    setInverse <- function(inverse) {
        i <<- inverse
    }

    
    getInverse <- function() {
        i
    }

    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


cacheSolve <- function(x, ...) {

  
    m <- x$getInverse()

   
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

   
    data <- x$get()

   
    m <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(m)

    ## Return the matrix
    m
}     
