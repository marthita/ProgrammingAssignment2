## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#Reserve a memory space for the matrix
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setinversa<-function(solve) m<<-solve
  getinversa<-function() m
  list(set=set,get=get,setinversa=setinversa,getinversa=getinversa)
}


## Write a short comment describing this function

#Return a matrix is a inverse matrix x
cacheSolve <- function(x, ...) {
  m<-x$getinversa()
  if(!is.null(m)){
    message("cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setinversa(m)
  m
}
