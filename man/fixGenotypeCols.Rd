% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fixGenotypeCols.R
\name{fixGenotypeCols}
\alias{fixGenotypeCols}
\title{Reformat names of observed genotype columns}
\usage{
fixGenotypeCols(ped)
}
\arguments{
\item{ped}{the pedigree information in datatable format}
}
\description{
This is not a good fix. A better solution is to avoid the problem.
Currently qcStudbook() blindly changes all of the column names by removing
the underscores.
}
