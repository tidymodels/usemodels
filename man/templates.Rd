% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use.R
\name{use_glmnet}
\alias{use_glmnet}
\alias{use_xgboost}
\alias{use_kknn}
\alias{use_ranger}
\alias{use_earth}
\alias{use_cubist}
\title{Functions to create boilerplate code for specific models}
\usage{
use_glmnet(
  formula,
  data,
  prefix = "glmnet",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE
)

use_xgboost(
  formula,
  data,
  prefix = "xgboost",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE
)

use_kknn(
  formula,
  data,
  prefix = "kknn",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE
)

use_ranger(
  formula,
  data,
  prefix = "ranger",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE
)

use_earth(
  formula,
  data,
  prefix = "earth",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE
)

use_cubist(
  formula,
  data,
  prefix = "cubist",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE
)
}
\arguments{
\item{formula}{A simple model formula with no in-line functions. This will
be used to template the recipe object as well as determining which outcome
and predictor columns will be used.}

\item{data}{A data frame with the columns used in the analysis.}

\item{prefix}{A single character string to use as a prefix for the resulting
objects.}

\item{verbose}{A single logical that determined whether comments are added to
the printed code explaining why certain lines are used.}

\item{tune}{A single logical that controls if code for model tuning should be
printed.}

\item{colors}{A single logical for coloring warnings and code snippets that
require the users attention.}
}
\value{
Invisible \code{NULL} but code is printed to the console.
}
\description{
These functions make suggestions for code when using a few common models.
They print out code to the console that could be considered minimal syntax
for their respective techniques. Each creates a prototype recipe and workflow
object that can be edited or updated as the data require.
}
\details{
Based on the columns in \code{data}, certain recipe steps printed. For example, if
a model requires that qualitative predictors be converted to numeric (say,
using dummy variables) then an additional \code{step_dummy()} is added. Otherwise
that recipe step is not included in the output.

The syntax is opinionated and should not be considered the exact answer for
every data analysis. It has reasonable defaults.
}
\examples{
library(palmerpenguins)
data(penguins)
use_glmnet(species ~ ., data = penguins)
use_glmnet( body_mass_g ~ ., data = penguins, verbose = TRUE, prefix = "gunter")
}