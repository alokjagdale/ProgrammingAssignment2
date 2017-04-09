# ProgrammingAssignment2
Repository for Programming Assignment 2 for R Programming on Coursera
# read the R script RAssignmentWeek3.R

# create a *square* matrix (because `solve` only handles square matrices)
# create the matrix during the call of makeCacheMatrix()

#cacheSolve() will check if the inverse is cached ealier and gets the vlaue from cache if not avaialable 
# uses solve() function to calculate inverse. 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Runing this function on one 2*2 inversible matrix
# a <- makeCacheMatrix( matrix(c(1,2,12,13), nrow = 2, ncol = 2) )
#summary(a)
#            Length Class  Mode    
$setMatrix    1      -none- function
$getMatrix    1      -none- function
$cacheInverse 1      -none- function
$getInverse   1      -none- function

cacheSolve(a)
[,1]        [,2]
[1,] -1.1818182  1.09090909
[2,]  0.1818182 -0.09090909
#cacheSolve(a)
getting cached data
           [,1]        [,2]
[1,] -1.1818182  1.09090909
[2,]  0.1818182 -0.09090909


