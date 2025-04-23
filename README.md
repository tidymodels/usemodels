
<!-- README.md is generated from README.Rmd. Please edit that file -->

# usemodels

<!-- badges: start -->

[![R-CMD-check](https://github.com/tidymodels/usemodels/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tidymodels/usemodels/actions/workflows/R-CMD-check.yaml)
[![Coverage
status](https://codecov.io/gh/tidymodels/usemodels/branch/main/graph/badge.svg)](https://app.codecov.io/github/tidymodels/usemodels?branch=main)
[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://lifecycle.r-lib.org/articles/stages.html)
<!-- badges: end -->

The usemodels package is a helpful way of quickly creating code snippets
to fit models using the tidymodels framework.

Given a simple formula and a data set, the `use_*` functions can create
code that appropriate for the data (given the model).

For example, using the palmerpenguins data with a `glmnet` model:

``` r
> library(usemodels)
> library(palmerpenguins)
> data(penguins)
> use_glmnet(body_mass_g ~ ., data = penguins)
glmnet_recipe <- 
  recipe(formula = body_mass_g ~ ., data = penguins) |> 
  step_novel(all_nominal_predictors()) |> 
  step_dummy(all_nominal_predictors()) |> 
  step_zv(all_predictors()) |> 
  step_normalize(all_numeric_predictors()) 

glmnet_spec <- 
  linear_reg(penalty = tune(), mixture = tune()) |> 
  set_mode("regression") |> 
  set_engine("glmnet") 

glmnet_workflow <- 
  workflow() |> 
  add_recipe(glmnet_recipe) |> 
  add_model(glmnet_spec) 

glmnet_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), mixture = c(0.05, 
    0.2, 0.4, 0.6, 0.8, 1)) 

glmnet_tune <- 
  tune_grid(glmnet_workflow, resamples = stop("add your rsample object"), grid = glmnet_grid) 
```

The recipe steps that are used (if any) depend on the type of data as
well as the model. In this case, the first two steps handle the fact
that `Species` is a factor-encoded predictor (and `glmnet` requires all
numeric predictors). The last two steps are added because, for this
model, the predictors should be on the same scale to be properly
regularized.

The package includes these templates:

``` r
> ls("package:usemodels", pattern = "use_")
 [1] "use_bag_tree_rpart"   "use_C5.0"             "use_cubist"          
 [4] "use_dbarts"           "use_earth"            "use_glmnet"          
 [7] "use_kernlab_svm_poly" "use_kernlab_svm_rbf"  "use_kknn"            
[10] "use_mgcv"             "use_mixOmics"         "use_nnet"            
[13] "use_ranger"           "use_rpart"            "use_xgboost"         
[16] "use_xrf"             
```

You can also copy code to the clipboard using the option
`clipboard = TRUE`.

## Installation

You can install usemodels with:

``` r
devtools::install_github("tidymodels/usemodels")
```

## Contributing

This project is released with a [Contributor Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

- For questions and discussions about tidymodels packages, modeling, and
  machine learning, please [post on RStudio
  Community](https://forum.posit.co/new-topic?category_id=15&tags=tidymodels,question).

- If you think you have encountered a bug, please [submit an
  issue](https://github.com/tidymodels/usemodels/issues).

- Either way, learn how to create and share a
  [reprex](https://reprex.tidyverse.org/articles/articles/learn-reprex.html)
  (a minimal, reproducible example), to clearly communicate about your
  code.

- Check out further details on [contributing guidelines for tidymodels
  packages](https://www.tidymodels.org/contribute/) and [how to get
  help](https://www.tidymodels.org/help/).
