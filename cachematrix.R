##This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) { 
        inv <- NULL # object inv created with initial value NULL
        set <- function(y){     ##     define the set function to assign new value of matrix
                x <<- y
                inv <<- NULL    ## if there is a new matrix, reset inv to NULL
        }
        get <- function() x     ## define the get fucntion - returns value of the matrix argument
        setinverse <- function(inverse) inv <- inverse ## assigns value of inv using inverse function
        getinverse <- function() inv ## gets the value of inv where called
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then cacheSolve will retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(inv)){
                message(("getting cached data"))
                return(inv)
        }
        data <- x$getinverse()
        inv <- solve(data,...)
        x$setinverse(inv)
        inv
        ## Return a matrix that is the inverse of 'x'
}
