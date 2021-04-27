## Put comments here that give an overall description of what your
## functions do

## This function can create matrix that can cache its inverse 

makeCacheMatrix <- function(x = matrix()) {m <- NULL
+   set <- function(matrix) {
+     x <<- matrix
+     m <<- NULL
+   }
+   get <- function() {x
+   }
+   
+   SetCacheInverse <- function(inverse) {
+     m <<- inverse
+   }
+   GetCacheInverse <- function() {
+     m
+   }
+   list(set = set, get = get,
+        SetCacheInverse = SetCacheInverse,
+        GetCacheInverse = GetCacheInverse)

}


## This function is used to get the cached data 

cacheSolve <- function(x, ...) {+   inv <- x$getCacheInverse()
+   if(!is.null(inv)) {
+     message("getting cached data")
+     return(inv)
+   }
+   data <- x$get()
+   inv <- solve(data, ...)
+   x$setCacheInverse(inv)
+   inv
+}
        ## Return a matrix that is the inverse of 'x'

