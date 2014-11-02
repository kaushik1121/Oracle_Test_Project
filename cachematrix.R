## The below two Functions will cache the inverse of a matrix

## Creating a matrix which will cache its inverse

makeCacheMatrix <- function( m = matrix() ) {

    ## Initializing the inverse property
    i <- NULL

    ## Set the matrix
    set <- function( matrix ) {
	m <<- matrix
	i <<- NULL
    }

    ## Get the matrix
    get <- function() {
    	## Returning the matrix
    	m
    }

    ## Set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Get the inverse of the matrix
    getInverse <- function() {
        ## Returning the inverse property
        i
    }

    ## Returning a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}

## Computing the inverse of the matrix returned by "makeCacheMatrix" above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the "cachesolve" will retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {

    ## Returning a matrix that is the inverse of 'x'
    m <- x$getInverse()

    ## Returning the inverse if its already set
    if( !is.null(m) ) {
	message("getting cached data")
	return(m)
    }

    ## Getting the matrix from our object
    data <- x$get()

    ## Calculating the inverse using matrix multiplication
    m <- solve(data) %*% data

    ## Setting the inverse to the object
    x$setInverse(m)

    ## Returning the matrix
    m

}
