% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lab.R
\name{choose_test.lab}
\alias{choose_test.lab}
\title{Filter the final result of the object lab}
\usage{
\method{choose_test}{lab}(obj, test = "mis", group_id = T)
}
\arguments{
\item{obj}{An object. Class lab.}

\item{test}{A character scalar. Parameters, which use to filter the final dataset, default: "mis":
"ok" - analysis, which has a correct estimate of the result,
"mis" - analysis, which has an incorrect estimate of the result,
"skip" - analysis, which has an empty value of the estimate,
"null" - analysis, which has an empty result and value of the estimate.}

\item{group_id}{A logical scalar, default is TRUE.True is grouped by id, otherwise, it isn't grouped.}
}
\value{
The filtered dataset by a value of \code{test}.
}
\description{
Filter the final result of the object lab
}
\examples{
ID <- c("01", "02", "03")
SITE <- c("site 01", "site 02", "site 03")
AGE <- c("19", "20", "22")
SEX <- c("f", "m", "f")
GLUC_V1 <- c(5.5, 4.1, 9.7)
GLUC_IND_V1 <- c("norm", "no", "cl")
AST_V2 <- c("30", "48", "31")
AST_IND_V2 <- c(NA, "norm", "norm")

df <- data.frame(
  ID, SITE, AGE, SEX,
  GLUC_V1, GLUC_IND_V1,
  AST_V2, AST_IND_V2,
  stringsAsFactors = FALSE
)

refs <- system.file("labs_refer.xlsx", package = "dmtools")
obj_lab <- lab(refs, ID, AGE, SEX, "norm", "no")

obj_lab <- check(obj_lab, df)
choose_test(obj_lab, "mis")
}
