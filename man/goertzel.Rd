\name{goertzel}
\alias{goertzel}
\title{
  Calculates individual terms of the discrete Fourier transform using the Goertzel algorithm
}
\description{
The Goertzel algorithm is faster than using a fast Fourier transform, if only a few Fourier components are requested.
}
\usage{
goertzel(signal, k)
}
\arguments{
\item{signal}{signal data}
\item{k}{the k-th component(s) of the Fourier transform to be calculated}
}
\examples{
\dontrun{
  goertzel(c(3,2,1,-1,1,-2,-3,-2),1)
  # Result: 4.12132-7.535534i
}
}
