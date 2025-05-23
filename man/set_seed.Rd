% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_seed.R
\name{set_seed}
\alias{set_seed}
\title{Work around for unit tests using sample() among various versions of R}
\usage{
set_seed(seed = 1L)
}
\arguments{
\item{seed}{argument to \code{set.seed}}
}
\value{
NULL, invisibly.
}
\description{
The change in how \code{set.seed} works in R 3.6 prompted the creation of this
R version agnostic replacement to get unit test code to work on multiple
versions of R in a CICD test build.
}
\details{
It seems \code{RNGkind(sample.kind="Rounding")} does not work prior to
version 3.6 so I resorted to using version dependent construction of the
argument list to set.seed() in do.call().#'
}
\examples{
set_seed(1)
rnorm(5)
}
