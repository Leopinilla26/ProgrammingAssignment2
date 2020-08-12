## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## La funcion crea una lista que establece u obtiene una matriz y su inversa, para ello primero inicializa los objetos (matriz y su inversa) seguidamente define los setter y getters de los objetos para finalmente crear una lista
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
          x <<- y
          m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse,getinverse = getinverse)
}


## Write a short comment describing this function
##Funcion que calcula la inversa de una matriz

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getinverse()
  if (!is.null(m)) {
          message("getting cached data")
          return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
