\name{makeSample2}
\alias{makeSample2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ create a sample of the second model stored in a file  }
\description{
   make a sample of the first model, that is to say simulate 
   the sequence of the random variables Xi (stay duration)
   the sequence of Yi (exposure time) and the sequence of Zi (side effect reporting)
}
\usage{
makeSample2(file, nbPatient, disXi, disYi)
}
\arguments{
  \item{file}{ the filename in which the simulation will be stored }
  \item{nbPatient}{ the number of patients for the simulation }
  \item{disXi}{ the distribution of the variable Xi :
disXi is a 3 elements list : rangen <=>  a random positive variable generator
       ; nbparam <=> number of parameter of this distribution and param <=> a list of parameters
 }
  \item{disYi}{ the distribution of the variable Yi :
disYi is a 3 elements list : rangen <=>  a random positive variable generator
       ; nbparam <=> number of parameter of this distribution and param <=> a list of parameters
}
}
\value{
}
\author{ CJ }
\examples{

arg1ExpMod2<-list(rangen=rexp,nbparam=1,param=list(1/2));
arg1BinMod2<-list(rangen=rbinom,nbparam=2,param=list(1,1/20));
arg1UnifMod2<-list(rangen=runif,nbparam=2,param=list(0,20));
arg1LnormMod2<-list(rangen=rlnorm,nbparam=2,param=list(1/4,1));

arg2ExpMod2<-list(rangen=rexp,nbparam=1,param=list(1/5));
# arg2-cst<-list(rangen=pcst<-function(x,p) p ,nbparam=1,param=list(1/10));
arg2GammaMod2<-list(rangen=rgamma,nbparam=2,param=list(3,1/5));


makeSample2("thedata.rda",200,arg1ExpMod2,arg2ExpMod2)

}
\keyword{ file }% at least one, from doc/KEYWORDS
