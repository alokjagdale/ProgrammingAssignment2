

# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
# Assuption : For this assignment, assume that the matrix supplied is always invertible

 # makeCacheMatrix is a function that returns a list of functions 
# Its puspose is to store a martix and a cached value of the inverse of the  
# matrix. Contains the following functions: 
# * setMatrix      set the value of a matrix 
# * getMatrix      get the value of a matrix 
# * cacheInverse   get the cahced value (inverse of the matrix) 
# * getInverse   get the cahced value (inverse of the matrix) 
 

# makeCacheMatrix function 
 makeCacheMatrix <- function(x = numeric()) { 
            
       # Initially cached so set it to NULL 
       cache <- NULL 
         
          # store a matrix 
         setMatrix <- function(newMatrix) { 
                 x <<- newMatrix 
                  # The matrix is assigned a new value, reset the cache to Null
                  cache <<- NULL 
            } 

  
           # Read the stored matrix 
           getMatrix <- function() { 
                     x 
             } 
   
           #If X is a square invertible matrix, then solve(X) returns its inverse
           # cache the given argument  
           cacheInverse <- function(solve) { 
                     cache <<- solve 
             } 
   
  
           # get the cached value 
           getInverse <- function() { 
                     cache 
             } 
            
           # return a list. Each named element of the list is a function 
           list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse) 
   } 
 


 # cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix.
 # If the inverse has already been calculated (and the matrix has not changed), then the cachesolve 
 #should retrieve the inverse from the cache
 
 cacheSolve <- function(y, ...) { 
           # get the cached value 
           inverseMatrix <- y$getInverse() 
          # Check if cached value exists. If exists get it 
          if(!is.null(inverseMatrix)) { 
                     message("getting cached data") 
                   return(inverseMatrix) 
            } 
           # Else get the matrix, caclulate the inverse and store it in 
           # the cache 
          InputMatrix <- y$getMatrix() 
          inverseMatrix <- solve(InputMatrix) 
          y$cacheInverse(inverseMatrix) 
            
          # return the inverse 
          inverseMatrix 
   } 
