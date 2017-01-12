## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
        inv <- NULL
        set <- function(y){
                x <- y
                inv <- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <- inverse
        getinverse <- function() inv
        list(set=set, get=get, setmean=setmean, getmean=getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(inv)){
                message(("getting cached data"))
                return(inv)
        }
        data <- X$get()
        inv <- solve(data,...)
        x$setinverse(inv)
        inv
        ## Return a matrix that is the inverse of 'x'
}
