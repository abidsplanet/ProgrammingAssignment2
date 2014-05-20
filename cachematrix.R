## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { # the argument in the function defaults to matrix()
        m <- NULL   # it sets m to NULL.m is cache for this particular object
        set <- function(y) {    #set value in x
                x <<- y
                m <<- NULL
        }
        get <- function() x     #The get() subfunction (line 08) grabs whatever vector
                                #might be stored in x and returns itThe get() subfunction 
                                #grabs whatever vector might be stored in x and returns it
        setinv <- function(inv) m <<- inv # save cache actually
        getinv <- function() m  # provide inverse matrix
        list(set = set, get = get, 
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x' 
        m <- x$getinv() # got the inverse matrix
        if(!is.null(m)) {  # check whether m has value or not.
                message("getting cached data")
                return(m)
        }
        data <- x$get() # get the main data (main matrix)
        m <- solve(data) # calc inverse of the data matrix
        x$setinv(m) # set the inv matrix value
        m  # return
}
