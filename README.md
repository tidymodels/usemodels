
<!-- README.md is generated from README.Rmd. Please edit that file -->

# usemodels

[![R build
status](https://github.com/tidymodels/usemodels/workflows/R-CMD-check/badge.svg)](https://github.com/tidymodels/usemodels/actions)
[![Codecov test
coverage](https://codecov.io/gh/tidymodels/usemodel/branch/master/graph/badge.svg)](https://codecov.io/gh/tidymodels/usemodel?branch=master)
![](https://img.shields.io/badge/lifecycle-maturing-blue.svg)

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
glmn_recipe <- 
  recipe(formula = body_mass_g ~ ., data = penguins) %>% 
  step_novel(all_nominal(), -all_outcomes()) %>% 
  step_dummy(all_nominal(), -all_outcomes()) %>% 
  step_zv(all_predictors()) %>% 
  step_normalize(all_predictors(), -all_nominal()) 

glmn_model <- 
  linear_reg(penalty = tune(), mixture = tune()) %>% 
  set_mode("regression") %>% 
  set_engine("glmnet") 

glmn_workflow <- 
  workflow() %>% 
  add_recipe(glmn_recipe) %>% 
  add_model(glmn_model) 

glmn_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), mixture = c(0.05, 
    0.2, 0.4, 0.6, 0.8, 1)) 

glmn_tune <- 
  tune_grid(glmn_workflow, resamples = stop("add your rsample object"), grid = glmn_grid) 
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
[1] "use_earth"   "use_glmnet"  "use_kknn"    "use_ranger"  "use_xgboost"
```

## Installation

You can install usemodels with:

``` r
devtools::install_github("tidymodels/usemodels")
```

## Contributing

This project is released with a [Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

  - For questions and discussions about tidymodels packages, modeling,
    and machine learning, please [post on RStudio
    Community](https://rstd.io/tidymodels-community).

  - If you think you have encountered a bug, please [submit an
    issue](https://github.com/tidymodels/usemodels/issues).

  - Either way, learn how to create and share a
    [reprex](https://rstd.io/reprex) (a minimal, reproducible example),
    to clearly communicate about your code.

  - Check out further details on [contributing guidelines for tidymodels
    packages](https://www.tidymodels.org/contribute/) and [how to get
    help](https://www.tidymodels.org/help/).
