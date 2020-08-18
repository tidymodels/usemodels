library(testthat)
library(usemodels)


if (identical(Sys.getenv("NOT_CRAN"), "true")) { # emulates `testthat:::on_cran()`
  if (utils::packageVersion("testthat") >= "2.99.0.9000") {
    test_check("usemodels")
  }
}

