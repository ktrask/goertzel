
#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
SEXP goertzelCore(SEXP a, SEXP alpha) {
    Rcpp::NumericVector xa(a);
    Rcpp::NumericVector xalpha(alpha);
    double ialpha = xalpha[0];
    int n_xa = xa.size();
    int n_alpha = xalpha.size();
    Rcpp::NumericVector xab(2*n_alpha);
    double tmp;
    xab[0] = xa[0] + 0 - 0;
    xab[1] = xa[1] + ialpha * xab[0] - 0;
    for( int i = 2; i < n_xa; i++){
      for( int j = 0; j < n_alpha; j++ ) {
        tmp = xa[i] + xalpha[j] * xab[1+2*j] - xab[0+2*j];
        xab[0+2*j] = xab[1+2*j];
        xab[1+2*j] = tmp;
      }
    }
    return xab;
}
