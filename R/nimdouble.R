#' Doubles an integer using nim
#'
#' @param x an integer
#' @useDynLib nimtest
#' @export
nimdouble <- function(x) {
  .Call("nimdouble", x, PACKAGE = "nimtest")
}
