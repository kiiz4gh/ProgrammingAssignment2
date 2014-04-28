## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function creates a special matrix object that sets the value 
#of the object, outputs its value as well as sets and output its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        setmat <- functon(matx){
                x <<- matx
                inv <<- NULL
        }
        getmat <- function() {x}
        setinv <- function(nv) {inv <<- nv}
        getinv <- function() {inv}
        list(setmat = setmat, getmat = getmat,
             setinv = setinv,
             getinv = getinv)

}


## Write a short comment describing this function
# this funtion outputs the innverse of the matrix. when it is calculated
#for the first it is cached and this cached version is used rather than a 
#re calculation

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting inverse of matrix")
                return(inv)
        }
        
        mtx <- x$getmat()
        inv <- solve(mtx, ...)
        x$setinv(inv)
        inv
}
