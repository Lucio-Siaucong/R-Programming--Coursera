## Put comments here that give an overall description of what your
## functions do
## This function set the value of the matrix and allows user to get it

makeCacheMatrix <- function(x = matrix()) {
        inv<- NULL
        set<- function(y){
                x<-y
                inv<- NULL
        }
        get<- function()x
        setsolve<-function(solve) inv<<- solve
        getsolve<- function()inv
        #why is the list necessary?
        list(set=set, get=get, 
             setsolve=setsolve,
             getsolve=getsolve)
}


## This function compute the inverse matrix and store the the value
## When the value is store, this function simply returns the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<- x$getsolve()
        if(!is.null(inv)){
                message ("getting cached data")
                return(inv)
        }
        data<- x$get()
        inv<-solve(data,...)
        x$setsolve(inv)
        inv
}
