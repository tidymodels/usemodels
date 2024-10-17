# Code to loop over all tests and configurations

dummy_template <- function(model, prefix, verbose, tune) {
  set.seed(3522) # for models where a seed is set
  rlang::eval_tidy(
    rlang::call2(
      paste0("use_", model),
      formula = body_mass_g ~ .,
      data = expr(penguins),
      verbose = enexpr(verbose),
      tune = enexpr(tune),
      prefix = paste0(prefix, "_dummies"),
      colors = TRUE
    )
  )
}

no_dummy_template <- function(model, prefix, verbose, tune) {
  set.seed(3522) # for models where a seed is set
  rlang::eval_tidy(
    rlang::call2(
      paste0("use_", model),
      formula = species ~ .,
      data = expr(penguins),
      verbose = enexpr(verbose),
      tune = enexpr(tune),
      prefix = paste0(prefix, "_no_dummies"),
      colors = TRUE
    )
  )
}

verify_models <- function(model, prefix, tune, verbose) {
  skip_if_not_installed("modeldata")
  library(modeldata)
  data("penguins")

  penguins$island <- as.character(penguins$island)

  # These are automatically skipped on CRAN
  if (model != "C5.0") {
    expect_snapshot(dummy_template(model, prefix, verbose, tune))
  }
  if (model != "cubist") {
    expect_snapshot(no_dummy_template(model, prefix, verbose, tune))
  }
}


test_that("all model templates", {
  skip_if_not_installed("modeldata")
  library(modeldata)
  data("penguins")

  penguins$island <- as.character(penguins$island)

  models <- c("bag_tree_rpart", "C5.0", "cubist", "dbarts", "earth", "glmnet",
              "kernlab_svm_poly", "kernlab_svm_rbf", "kknn", "mgcv", "mixOmics",
              "nnet", "ranger", "rpart", "xgboost", "xrf")

  test_config <-
    expand.grid(
      model = models,
      tune = c(FALSE, TRUE),
      verbose = c(TRUE, FALSE)
    )
  test_config$pref <- paste0("test_config_", 1:nrow(test_config))

  res <- purrr::pmap(test_config, verify_models)
})
