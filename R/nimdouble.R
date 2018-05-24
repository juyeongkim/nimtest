#' Doubles an integer using nim
#'
#' @param x an integer
#' @useDynLib nimtest
#' @export
nimdouble <- function(x) {
  .Call("nimdouble", x, PACKAGE = "nimtest")
}

#' Doubles a number using nim
#'
#' @param x a numeric
#' @useDynLib nimtest
#' @export
nimdoublerr <- function(x) {
  .Call("nimdoubleN", x, PACKAGE = "nimtest")
}

#' false
#'
#' @param x a logical
#' @useDynLib nimtest
#' @export
nimboolly <- function(x) {
  .Call("nimbool", x, PACKAGE = "nimtest")
}

randy <- function(x) {
  .Call("nimrandom", x, PACKAGE = "nimtest")
}

hello <- function() {
  .Call("nimhello", PACKAGE = "nimtest")
}
