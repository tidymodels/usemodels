library(modeldata)
data("penguins")

penguins$island <- as.character(penguins$island)

# ------------------------------------------------------------------------------

# Code to loop over all tests and configurations

dummy_clip_template <- function(model, prefix, verbose, tune) {
  Sys.setenv(CLIPR_ALLOW = TRUE)
  set.seed(3522) # for models where a seed is set
  rlang::eval_tidy(
    rlang::call2(
      paste0("use_", model),
      formula = body_mass_g ~ .,
      data = expr(penguins),
      verbose = enexpr(verbose),
      tune = enexpr(tune),
      prefix = paste0(prefix, "_dummies"),
      colors = TRUE,
      clipboard = TRUE
    )
  )
  print(clipr::read_clip())
  clipr::clear_clip()
}

no_dummy_clip_template <- function(model, prefix, verbose, tune) {
  set.seed(3522) # for models where a seed is set
  rlang::eval_tidy(
    rlang::call2(
      paste0("use_", model),
      formula = species ~ .,
      data = expr(penguins),
      verbose = enexpr(verbose),
      tune = enexpr(tune),
      prefix = paste0(prefix, "_no_dummies"),
      colors = TRUE,
      clipboard = TRUE
    )
  )
  print(clipr::read_clip())
  clipr::clear_clip()
}

verify_models <- function(model, prefix, tune, verbose) {
  # These are automatically skipped on CRAN
  if (model != "C5.0") {
    expect_snapshot(   dummy_clip_template(model, prefix, verbose, tune))
  }
  if (model != "cubist") {
    expect_snapshot(no_dummy_clip_template(model, prefix, verbose, tune))
  }
}


test_that('all model templates with clipboard', {
  skip_on_cran()
  skip_on_os("linux")
  skip_on_os("windows")
  local_edition(3)

  models <- c("glmnet", "xgboost", "ranger", "kknn", "earth", "cubist",
              "kernlab_svm_poly", "kernlab_svm_rbf", "C5.0")

  test_config <-
    expand.grid(
      model = models,
      tune = c(FALSE, TRUE),
      verbose = c(TRUE, FALSE)
    )
  test_config$pref <- paste0("test_config_", 1:nrow(test_config))

  res <- purrr::pmap(test_config, verify_models)

})

