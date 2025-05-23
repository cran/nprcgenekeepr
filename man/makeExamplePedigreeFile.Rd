% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makeExamplePedigreeFile.R
\name{makeExamplePedigreeFile}
\alias{makeExamplePedigreeFile}
\title{Write copy of nprcgenekeepr::examplePedigree into a file}
\usage{
makeExamplePedigreeFile(
  file = file.path(tempdir(), "examplePedigree.csv"),
  fileType = "csv"
)
}
\arguments{
\item{file}{character vector of length one providing the file name}

\item{fileType}{character vector of length one with possible values of
\code{"txt"}, \code{"csv"}, or \code{"xlsx"}. Default value is \code{"csv"}.}
}
\value{
Full path name of file saved.
}
\description{
Uses \code{examplePedigree} data structure to create an example data file
}
\examples{
library(nprcgenekeepr)
pedigreeFile <- makeExamplePedigreeFile()
}
