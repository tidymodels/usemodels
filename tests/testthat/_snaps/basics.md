# wrong model type

    Code
      use_cubist(island ~ ., data = penguins)
    Error <rlang_error>
      Cubist models are only for regression

---

    Code
      use_C5.0(bill_depth_mm ~ ., data = penguins)
    Error <rlang_error>
      C5.0 models are only for classification.

# no access to clipboard

    Code
      use_kknn(mpg ~ ., data = mtcars, clipboard = TRUE)
    Message <simpleMessage>
      CLIPR_ALLOW has not been set, so clipr will not run interactively
    Error <rlang_error>
      Please use `clipboard = FALSE`

