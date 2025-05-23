test_that("wrong model type", {
  skip_if_not_installed("modeldata")
  library(modeldata)
  data("penguins")

  expect_snapshot(use_cubist(island ~ ., data = penguins), error = TRUE)
  expect_snapshot(use_C5.0(bill_depth_mm ~ ., data = penguins), error = TRUE)
})

test_that("no access to clipboard", {
  Sys.setenv(CLIPR_ALLOW = FALSE)
  expect_snapshot(
    use_kknn(mpg ~ ., data = mtcars, clipboard = TRUE),
    error = TRUE
  )
})
