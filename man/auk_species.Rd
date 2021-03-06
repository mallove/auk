% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auk-species.r
\name{auk_species}
\alias{auk_species}
\title{Filter the eBird data by species}
\usage{
auk_species(x, species, replace)
}
\arguments{
\item{x}{\code{auk_ebd} object; reference to object created by \code{\link[=auk_ebd]{auk_ebd()}}.}

\item{species}{character; species to filter by, provided as scientific or
English common names, or a mixture of both. These names must match the
official eBird Taxomony (\link{ebird_taxonomy}).}

\item{replace}{logical; multiple calls to \code{auk_species()} are additive, unless
\code{replace = FALSE}, in which case the previous list of species to filter by
will be removed and replaced by that in the current call.}
}
\value{
An \code{auk_ebd} object.
}
\description{
Define a filter for the eBird Basic Dataset (EBD) based on species. This
function only defines the filter and, once all filters have been defined,
\code{\link[=auk_filter]{auk_filter()}} should be used to call AWK and perform the filtering.
}
\examples{
# common and scientific names can be mixed
species <- c("Gray Jay", "Pluvialis squatarola")
system.file("extdata/ebd-sample.txt", package = "auk") \%>\%
  auk_ebd() \%>\%
  auk_species(species)
  
# alternatively, without pipes
ebd <- auk_ebd(system.file("extdata/ebd-sample.txt", package = "auk"))
auk_species(ebd, species)
}
