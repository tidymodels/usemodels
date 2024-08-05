# wrong model type

    Code
      use_cubist(island ~ ., data = penguins)
    Condition
      Error in `use_cubist()`:
      ! Cubist models are only for regression

---

    Code
      use_C5.0(bill_depth_mm ~ ., data = penguins)
    Condition
      Error in `use_C5.0()`:
      ! C5.0 models are only for classification.

# no access to clipboard

    Code
      use_kknn(mpg ~ ., data = mtcars, clipboard = TRUE)
    Message
      CLIPR_ALLOW has not been set, so clipr will not run interactively
    Condition
      Error in `check_clipboard()`:
      ! Please use `clipboard = FALSE`

