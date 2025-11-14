# Changelog

## usemodels (development version)

- Transition from the magrittr pipe to the base R pipe.

- Added
  [`use_nnet()`](https://usemodels.tidymodels.org/dev/reference/templates.md),
  [`use_rpart()`](https://usemodels.tidymodels.org/dev/reference/templates.md),
  [`use_bag_tree_rpart()`](https://usemodels.tidymodels.org/dev/reference/templates.md),
  [`use_mgcv()`](https://usemodels.tidymodels.org/dev/reference/templates.md),
  [`use_dbarts()`](https://usemodels.tidymodels.org/dev/reference/templates.md),
  [`use_mixOmics()`](https://usemodels.tidymodels.org/dev/reference/templates.md),
  [`use_xrf()`](https://usemodels.tidymodels.org/dev/reference/templates.md).

- Fix `recipe()` call when `clipboard = TRUE`

## usemodels 0.2.0

CRAN release: 2022-02-18

- SVM ([\#14](https://github.com/tidymodels/usemodels/issues/14)) and
  C5.0 ([\#9](https://github.com/tidymodels/usemodels/issues/9)) models
  were added.

- Clipboard access is enabled in all `use_*()` functions using the
  `clipboard = TRUE` argument
  ([\#12](https://github.com/tidymodels/usemodels/issues/12)).

- Use new `all_nominal_predictors()` selector
  ([\#17](https://github.com/tidymodels/usemodels/issues/17)).

## usemodels 0.1.0

CRAN release: 2020-11-17

- Updated version requirements for dependencies.

- Added
  [`use_cubist()`](https://usemodels.tidymodels.org/dev/reference/templates.md).

- Fixed bug in handling of variables for `step_string2factor()`

## usemodels 0.0.1

CRAN release: 2020-09-22

- Added a `NEWS.md` file to track changes to the package.
