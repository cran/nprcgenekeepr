% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{rhesusGenotypes}
\alias{rhesusGenotypes}
\title{rhesusGenotypes is a dataframe with two haplotypes per animal}
\format{
An object of class \code{data.frame} with 31 rows and 3 columns.
}
\usage{
rhesusGenotypes
}
\description{
There are  object.
}
\details{
Represents 31 animals that are also in the obfuscated \code{rhesusPedigree}
pedigree from \emph{rhesusGenotypes.csv}.
\describe{
\item{id}{-- character column of animal IDs}
\item{first_name}{-- a generic name for the first haplotype}
\item{second_name}{-- a generic name for the second haplotype}
}
}
\examples{
library(nprcgenekeepr)
data("rhesusGenotypes")
}
\keyword{datasets}
