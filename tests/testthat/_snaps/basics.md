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
      To run write_clip() in non-interactive mode, either call write_clip() with allow_non_interactive = TRUE, or set the environment variable CLIPR_ALLOW=TRUE
    Error <rlang_error>
      Please use `clipboard = FALSE`

