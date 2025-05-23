% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geneDrop.R
\name{geneDrop}
\alias{geneDrop}
\title{Gene drop simulation based on the provided pedigree information}
\usage{
geneDrop(
  ids,
  sires,
  dams,
  gen,
  genotype = NULL,
  n = 5000L,
  updateProgress = NULL
)
}
\arguments{
\item{ids}{A character vector of IDs for a set of animals.}

\item{sires}{A character vector with IDS of the sires for the set of
animals. \code{NA} is used for missing sires.}

\item{dams}{A character vector with IDS of the dams for the set of
animals. \code{NA} is used for missing dams.}

\item{gen}{An integer vector indicating the generation number for each
animal.}

\item{genotype}{A dataframe containing known genotypes. It has three
columns:  \code{id}, \code{first}, and \code{second}. The second and third
columns contain the integers indicating the observed genotypes.}

\item{n}{integer indicating the number of iterations to simulate.
Default is 5000.}

\item{updateProgress}{function or NULL. If this function is defined, it
will be called during each iteration to update a
\code{shiny::Progress} object.}
}
\value{
A data.frame \code{id, parent, V1 ... Vn}
A data.frame providing the maternal and paternal alleles for an animal
for each iteration. The first two columns provide the animal's ID and
whether the allele came from the sire or dam. These are followed by
\code{n} columns indicating the allele for that iteration.
}
\description{
Part of Genetic Value Analysis
}
\details{
The gene dropping method from \emph{Pedigree analysis by computer simulation}
by Jean W MacCluer, John L Vandeberg, and Oliver A Ryder (1986)
\url{doi:10.1002/zoo.1430050209} is used in the genetic value calculations.

Currently there is no means of handling knowing only one haplotype.
It will be easy to add another column to handle situations where only one
allele is observed and it is not known to be homozygous or heterozygous. The
new fourth column could have a frequency for homozygosity that could be
used in the gene dropping algorithm.

The genotypes are using indirection (integer instead of character) to
indicate the genes because the manipulation of character strings was found
to take 20-35 times longer to perform.

Adding additional columns to \code{genotype} does not significantly affect
the time require. Thus, it is convenient to add the corresponding haplotype
names to the dataframe using \code{first_name} and \code{second_name}.
}
\examples{
## We usually defined `n` to be >= 5000
library(nprcgenekeepr)
ped <- nprcgenekeepr::lacy1989Ped
allelesNew <- geneDrop(ped$id, ped$sire, ped$dam, ped$gen,
  genotype = NULL, n = 50, updateProgress = NULL
)
genotype <- data.frame(
  id = ped$id,
  first_allele = c(
    NA, NA, "A001_B001", "A001_B002",
    NA, "A001_B002", "A001_B001"
  ),
  second_allele = c(
    NA, NA, "A010_B001", "A001_B001",
    NA, NA, NA
  ),
  stringsAsFactors = FALSE
)
pedWithGenotype <- addGenotype(ped, genotype)
pedGenotype <- getGVGenotype(pedWithGenotype)
allelesNewGen <- geneDrop(ped$id, ped$sire, ped$dam, ped$gen,
  genotype = pedGenotype,
  n = 5, updateProgress = NULL
)
}
