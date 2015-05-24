## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function sets up a list of functions that can be used to access 
## 1. setting up a matrix that needs to be inverted
## 2. j
makeCacheMatrix <- function(x = matrix()) {
	 	sol <<- NULL
        setmatrix <- function(y) {
        	## Set the incoming matrix into a "special" matrix, solution is set to null 
                x <<- y
                sol <<- NULL
        }
        getmatrix <- function() {
        	x
        	}
        	
        setmatinv <- function(sol_inverse) {
       ## Set any incoming matrix as the solution ..  
        sol <<- sol_inverse
       	
        }
         getmatinv <- function() {
         	       ## get the matrix stored as the solution .. retreiving the inverse
         	sol
         	}
         	
        list(setmatrix = setmatrix, getmatrix = getmatrix,
             setmatinv = setmatinv,
             getmatinv = getmatinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        sol <- x$getmatinv()
        if(is.null(sol)) {
        	## If there is no solution previously cached, get the matrix, 
        
        	   	datamat<-x$getmatrix()
        	   	##solve for the inverse
				sol_inverse <- solve(datamat)
				## solution is saved as a variable in the parent environment
        		x$setmatinv(sol_inverse)}
        		
        else{
		       	## If there is a solution previously cached, say so, 

                message("getting cached data")
            }
            ## Get the matrix from the location
            
        x$getmatinv()                
                
}
