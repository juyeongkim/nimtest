#include <R.h>
#include <Rinternals.h>

extern int DoubleIt() ;
extern double DoubleFloat() ;
extern int Opposite() ;
extern int random_number() ;
extern char * Hello() ;


SEXP nimdouble(SEXP x){
  return Rf_ScalarInteger( DoubleIt( INTEGER(x)[0] ) ) ;
}

SEXP nimdoubleN(SEXP x){
  return Rf_ScalarReal( DoubleFloat( REAL(x)[0] ) ) ;
}

SEXP nimbool(SEXP x){
  return Rf_ScalarLogical( Opposite( LOGICAL(x)[0] ) ) ;
}

SEXP nimrandom(SEXP x){
  return Rf_ScalarInteger( random_number( INTEGER(x)[0] ) ) ;
}

SEXP nimhello(){
  return Rf_ScalarString(Rf_mkCharCE(Hello(), CE_UTF8));
}
