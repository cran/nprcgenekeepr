% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hasGenotype.R
\name{hasGenotype}
\alias{hasGenotype}
\title{Check for genotype data in dataframe}
\usage{
hasGenotype(genotype)
}
\arguments{
\item{genotype}{dataframe with genotype data}
}
\value{
A logical value representing whether or not the data.frame passed in
contains genotypic data that can be used. Non-standard column names are
accepted for this assessment.
}
\description{
Checks to ensure the content and structure are appropriate for genotype
data are in the dataframe and ready for the \code{geneDrop} function by
already being mapped to integers and placed in columns named \code{first}
and \code{second}. These checks are simply based on expected columns
and legal domains.
}
\examples{
library(nprcgenekeepr)
rhesusPedigree <- nprcgenekeepr::rhesusPedigree
rhesusGenotypes <- nprcgenekeepr::rhesusGenotypes
pedWithGenotypes <- addGenotype(
  ped = rhesusPedigree,
  genotype = rhesusGenotypes
)
hasGenotype(pedWithGenotypes)
}
