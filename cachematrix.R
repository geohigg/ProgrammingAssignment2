## Introduction to R Programming
## https://class.coursera.org/rprog-011 | Feb 15
## Programming Assignment 2: Lexical Scoping (Peer Review)

## Description: This function creates a matrix object
## then sets/gets the value of the matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {
        
        inverse.x <- NULL ##creating the inverse matrix object and setting it to null
        set <- function(y) {
                x <<- y 
                inverse.x <<- NULL
        }
        get <- function() x
        
        ##generate the inverse of the matrix x and assign it to inverse.x
        setinverse <- function(inverse) inverse.x <<- inverse
        getinverse <- function() inverse.x
        list (set = set, get = get,
              setinverse = setinverse,
              getinverse = getinverse)
}


## Description: This function determines whether or not the matix exists in cache
## the If function will calculate the inverse of the matrix if it is in cache
## otherwise it will get it and return the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse.x <-x$getinverse()
        if(!is.null(inverse.x)){
                message("getting the cached reversed matrix")
                return(inverse.x)
        }
        
        else { ## It is not cached
        
                inverse.x <- solve(x$get())
                ## cache the inverse matrix
                
                x$setinverse(inverse.x)
        
                ## Return the inverse matrix
                return(Iinverse.x)
        }
}