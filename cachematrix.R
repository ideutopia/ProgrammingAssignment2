## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## In this function below will make a chace of the inverse in matrix
makeCacheMatrix <- function(x = matrix()) {
  ##First we need to initialize inverse variable
  
  inv <- NULL
  
  ##then we initialize setter for the matrix
  setMx <- function(matrix){
    mx <<- matrix
    inv <<- NULL
  }
  ##then we initialize getter for the matrix
  ##this function will return the mx variable
  getMx <- function(){
    mx
  }
  #we do it again to create setOnverse and getInverse 
  setInverse <- function(inverse){
    inv <<- inverse
  }
  getInverse <- function(){
    inv
  }
  #then create the list
  
  list(set = setMx, get= getMx,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function
## This function will compute inverse the special matrix for makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mx <- x$getInverse()
        if(!is.null(m)){
          message("getting cached data")
          return(m)
        }
        
        data <- x$get()
        
        m<- solve(data)%% data
        
        ##Set the inverse to the object
        x$setInverse(m)
        m
  }
##Thank for your review and i'm so sorry for my bad english