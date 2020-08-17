library(palmerpenguins)
data("penguins")

penguins$island <- as.character(penguins$island)

# ------------------------------------------------------------------------------

# Code to loop over all tests and configurations

dummy_template <- function(model, verbose, tune) {
  set.seed(3522) # for models where a seed is set
  rlang::eval_tidy(
    rlang::call2(
      paste0("use_", model),
      formula = body_mass_g ~ .,
      data = expr(penguins),
      verbose = enexpr(verbose),
      tune = enexpr(tune),
      colors = TRUE
    )
  )
}

no_dummy_template <- function(model, verbose, tune) {
  set.seed(3522) # for models where a seed is set
  rlang::eval_tidy(
    rlang::call2(
      paste0("use_", model),
      formula = species ~ .,
      data = expr(penguins),
      verbose = enexpr(verbose),
      tune = enexpr(tune),
      colors = TRUE
    )
  )
}

verify_models <- function(model, tune, verbose) {
  local_edition(3)

  expect_snapshot_output(   dummy_template(model, verbose, tune))
  expect_snapshot_output(no_dummy_template(model, verbose, tune))
}


test_that('all model templates', {
  models <- c("glmnet", "xgboost", "ranger", "kknn", "earth")

  test_config <-
    expand.grid(
      model = models,
      tune = c(FALSE, TRUE),
      verbose = c(TRUE, FALSE)
    )

  res <- purrr::pmap(test_config, verify_models)

})

