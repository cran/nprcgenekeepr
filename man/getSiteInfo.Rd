% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getSiteInfo.R
\name{getSiteInfo}
\alias{getSiteInfo}
\title{Get site information}
\usage{
getSiteInfo(expectConfigFile = TRUE)
}
\arguments{
\item{expectConfigFile}{logical parameter when set to \code{FALSE}, no
configuration is looked for. Default value is \code{TRUE}.}
}
\value{
{A list of site specific information used by the application.}

Currently this returns the following character strings in a named list.
\enumerate{
\item\{center\}\{One of "SNPRC" or "ONPRC"\}
\item\{baseUrl\}\{If \code{center} is "SNPRC", baseUrl is one of
"https://boomer.txbiomed.local:8080/labkey" or
"https://vger.txbiomed.local:8080/labkey".
To allow testing, if \code{center} is "ONPRC" baseUrl is
"https://boomer.txbiomed.local:8080/labkey".\}
\item\{schemaName\}\{If \code{center} is "SNPRC", schemaName is "study".
If \code{center} is "ONPRC", schemaName is "study"\}
\item\{folderPath\} \{If \code{center} is "SNPRC", folderPath is "/SNPRC".
If \code{center} is "ONPRC", folderPath is "/ONPRC"\}
\item\{queryName\} \{is "demographics"\}
}
}
\description{
Get site information
}
\examples{
library(nprcgenekeepr)
## default sends warning if configuration file is missing
suppressWarnings(getSiteInfo())
getSiteInfo(expectConfigFile = FALSE)
}
