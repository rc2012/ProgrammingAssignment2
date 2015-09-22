## Put comments here that give an overall description of what your
## functions do

## Saves the inverse of a matrix in a cache

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get <-function() x
  setmatrix<-function(solve) m <<-solve
  getmatrix<-function () m
  list(set=set, get= get,setmatrix=setmatrix,getmatrix=getmatrix)
}

## Checks if the inverse of a matrix is in a cache if not it calcuates it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data)
  x$setmatrix(m)
  m
}
