## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


     makeCacheMatrix <- function(srk = matrix()) { 
    inverse <- NULL 
    set <- function(x) { 
         srk <<- x; 
         inverse <<- NULL; 
     } 
     get <- function() return(srk); 
     setinv <- function(inv) inverse <<- inv; 
     getinv <- function() return(inverse); 
     return(list(set = set, get = get, setinv = setinv, getinv = getinv)) 
      } 


## Write a short comment describing this function

cacheSolve <- function(srk, ...) { 
     inverse <- srk$getinv() 
     if(!is.null(inverse)) { 
         message("Getting cached data...") 
         return(inverse) 
     } 
     data <- srk$get() 
     invserse <- solve(data, ...) 
     srk$setinv(inverse) 
     return(inverse) 
      } 

