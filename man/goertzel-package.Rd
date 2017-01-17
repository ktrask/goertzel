\name{goertzel-package}
\alias{goertzel-package}
\docType{package}
\title{
  Calculates individual terms of the discrete Fourier transform using the Goertzel algorithm
}
\description{
  The Goertzel algorithm is faster than using a fast Fourier transform, if only a few Fourier components are requested.
}
\details{
  This section should provide a more detailed overview of how to use the
  package, including the most important functions.
  goertzel(signal, k)
}
\author{
Helena Schmidt, <helena.schmidt@ktrask.de>.

Maintainer: Helena Schmidt <helena.schmidt@ktrask.de>
}
\references{
  Description of the Goertzel algorithm on dsplib.org:
  http://en.dsplib.org/content/goertzel.html
}
% Optionally other standard keywords, one per line,
% from the file KEYWORDS in the R documentation.
\keyword{ package
          signal}
\seealso{
  fft {stats}
}
\examples{
  goertzel(c(3,2,1,-1,1,-2,-3,-2),1)
  # Result: 4.12132-7.535534i
}

