% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/obfuscateDate.R
\name{obfuscateDate}
\alias{obfuscateDate}
\title{obfucateDate adds a random number of days bounded by plus and minus max delta}
\usage{
obfuscateDate(baseDate, maxDelta = 30L, minDate)
}
\arguments{
\item{baseDate}{list of Date objects with dates to be obfuscated}

\item{maxDelta}{integer vector that is used to create min and max arguments
to \code{runif} (\code{runif(n, min = 0, max = 1)})}

\item{minDate}{list object of Date objects that has the lower bound of
resulting obfuscated dates}
}
\value{
A vector of dates that have be obfuscated.
}
\description{
Get the base_date add a random number of days taken from a uniform
distribution bounded by -max_delta and max_delta.
Insure the resulting date is as least as large as the min_date.
}
\examples{
library(nprcgenekeepr)
someDates <- rep(
  as.Date(c("2009-2-16", "2016-2-16"), format = "\%Y-\%m-\%d"),
  10
)
minBirthDate <- rep(as.Date("2009-2-16", format = "\%Y-\%m-\%d"), 20)
obfuscateDate(someDates, 30, minBirthDate)
}
