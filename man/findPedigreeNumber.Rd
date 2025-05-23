% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/findPedigreeNumber.R
\name{findPedigreeNumber}
\alias{findPedigreeNumber}
\title{Determines the generation number for each id.}
\usage{
findPedigreeNumber(id, sire, dam)
}
\arguments{
\item{id}{character vector with unique identifier for an individual}

\item{sire}{character vector with unique identifier for an
individual's father (\code{NA} if unknown).}

\item{dam}{character vector with unique identifier for an
individual's mother (\code{NA} if unknown).}
}
\value{
Integer vector indicating generation numbers for each id,
starting at 0 for individuals lacking IDs for both parents.
}
\description{
One of Pedigree Curation functions
}
\examples{
library(nprcgenekeepr)
library(stringi)
ped <- nprcgenekeepr::lacy1989Ped
ped$gen <- NULL
ped$population <- NULL
ped2 <- ped
ped2$id <- stri_c(ped$id, "2")
ped2$sire <- stri_c(ped$sire, "2")
ped2$dam <- stri_c(ped$dam, "2")
ped3 <- ped
ped3$id <- stri_c(ped$id, "3")
ped3$sire <- stri_c(ped$sire, "3")
ped3$dam <- stri_c(ped$dam, "3")
ped <- rbind(ped, ped2)
ped <- rbind(ped, ped3)
ped$pedigree <- findPedigreeNumber(ped$id, ped$sire, ped$dam)
ped$pedigree
}
