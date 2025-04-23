# usemodels (development version)

* Transition from the magrittr pipe to the base R pipe.

* Added `use_nnet()`, `use_rpart()`, `use_bag_tree_rpart()`, `use_mgcv()`, `use_dbarts()`, `use_mixOmics()`, `use_xrf()`. 

* Fix `recipe()` call when `clipboard = TRUE`

# usemodels 0.2.0

* SVM (#14) and C5.0 (#9) models were added. 

* Clipboard access is enabled in all `use_*()` functions using the `clipboard = TRUE` argument (#12).

* Use new `all_nominal_predictors()` selector (#17).

# usemodels 0.1.0

* Updated version requirements for dependencies. 

* Added `use_cubist()`. 

* Fixed bug in handling of variables for `step_string2factor()`

# usemodels 0.0.1

* Added a `NEWS.md` file to track changes to the package.
