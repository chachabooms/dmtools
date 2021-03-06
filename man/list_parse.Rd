% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/meddra.R
\name{list_parse}
\alias{list_parse}
\title{A list to a tibble.}
\usage{
list_parse(to_tibble)
}
\arguments{
\item{to_tibble}{A list with nested lists.}
}
\value{
A tibble.
}
\description{
A list to a tibble.
}
\examples{
temp_list <- list(list(a = 1, b = 3), list(a = 4, b = 5))
list_parse(temp_list)
}
