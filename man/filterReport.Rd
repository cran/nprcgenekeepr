% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filterReport.R
\name{filterReport}
\alias{filterReport}
\title{Filters a genetic value report down to only the specified animals}
\usage{
filterReport(ids, rpt)
}
\arguments{
\item{ids}{character vector of animal IDs}

\item{rpt}{a dataframe with required colnames \code{id}, \code{gu},
\code{zScores}, \code{import}, \code{totalOffspring}, which is
a data.frame of results from a genetic value analysis.}
}
\value{
A copy of report specific to the specified animals.
}
\description{
Filters a genetic value report down to only the specified animals
}
\examples{
library(nprcgenekeepr)
rpt <- nprcgenekeepr::pedWithGenotypeReport$report
rpt1 <- filterReport(c("GHH9LB", "BD41WW"), rpt)
}
