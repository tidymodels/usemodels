library(palmerpenguins)
data("penguins")

penguins$island <- as.character(penguins$island)

# ------------------------------------------------------------------------------

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
  # These are automatically skipped on CRAN
  expect_snapshot_output(   dummy_template(model, prefix, verbose, tune))
  expect_snapshot_output(no_dummy_template(model, prefix, verbose, tune))
}


test_that('all model templates', {
  local_edition(3)

  models <- c("glmnet", "xgboost", "ranger", "kknn", "earth", "cubist")

  test_config <-
    expand.grid(
      model = models,
      tune = c(FALSE, TRUE),
      verbose = c(TRUE, FALSE)
    )
  test_config$pref <- paste0("test_config_", 1:nrow(test_config))

  res <- purrr::pmap(test_config, verify_models)

})

