% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/checkErrorLst.R
\name{checkErrorLst}
\alias{checkErrorLst}
\title{checkErrorLst examines list for non-empty fields}
\usage{
checkErrorLst(errorLst)
}
\arguments{
\item{errorLst}{list with fields for each type of error detectable by
\code{qcStudbook}.}
}
\value{
Returns \code{NULL} is all fields are empty
else the entire list is returned.
}
\description{
checkErrorLst examines list for non-empty fields
}
\examples{
\donttest{
errorLst <- qcStudbook(nprcgenekeepr::pedFemaleSireMaleDam,
                       reportErrors = TRUE)
checkErrorLst(errorLst)
}

}
