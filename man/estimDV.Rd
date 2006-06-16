\name{estimDV}
\alias{estimDV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ compute the De Vielder estimator  }
\description{
   compute the De Vielder estimator, in other words, do the same function as 'DV' 
   but returns more details about this estimator whereas 'DV' only compute the lambda
   and mu of the De Vielder method
}
\usage{
estimDV(fileName, toplot = TRUE, header = TRUE, ks = FALSE)
}
\arguments{
  \item{fileName}{ the file in which the simulated data will be stored }
  \item{toplot}{ a logical variable to plot the result of this estimation }

  \item{header}{ a logical for : has the input file an header }
  \item{ks}{ a logical for : do you want the Kolmogorv Smirnov test }
}
\value{   
  a list of the following components
  \item{CR }{the CR risk constant calculated with the value of R}
  \item{R }{the risk constant estimated by this estimation}
  \item{T}{the vector of observations of the random variable T}
  \item{lambdaHat}{the best estimation of lambda}
  \item{muHat}{the best estimation of mu}
  \item{lambdaEmp}{the estimation of the lambda of the De Vielder method (in this case the same value as lambdaHat)}
  \item{muEmp}{the estimation of the mu of the De Vielder method (in this case the same value as mu)}
}
\author{CJ}
\examples{

#res<-estimDV("data.rda",TRUE,TRUE)

}
\keyword{ htest }% at least one, from doc/KEYWORDS
