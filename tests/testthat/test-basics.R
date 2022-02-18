library(modeldata)
data("penguins")

test_that('wrong model type', {
  local_edition(3)
  expect_snapshot(use_cubist(island ~ ., data = penguins))

})

test_that('no access to clipboard', {
  local_edition(3)

  Sys.setenv(CLIPR_ALLOW = FALSE)
  expect_snapshot(use_kknn(mpg~ ., data = mtcars, clipboard = TRUE))

})
