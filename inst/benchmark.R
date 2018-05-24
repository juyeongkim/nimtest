# go build -o libdoubler.so -buildmode=c-shared ./doubler
#
# nim c --cc:gcc --d:release --app:lib --out:libdoubler.so main.nim
# R CMD SHLIB -L. -ldoubler rnim.c
#
# Rscript -e 'dyn.load("nimtest.so"); .Call("nimdouble", 21L)'
# Rscript -e 'dyn.load("libdoubler.so"); .Call("nimdouble", 21L)'

Rcpp::cppFunction('int cdouble(int x) {
  return 2 * x;
}')

x <- 1000000000L

microbenchmark::microbenchmark(2L * x, cdouble(x), nimdouble(x))


SEXP nimdoublefloat(SEXP x){
  return Rf_ScalarReal( DoubleFloat( REAL(x)[0] ) ) ;
}
