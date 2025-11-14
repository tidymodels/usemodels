# Functions to create boilerplate code for specific models

These functions make suggestions for code when using a few common
models. They print out code to the console that could be considered
minimal syntax for their respective techniques. Each creates a prototype
recipe and workflow object that can be edited or updated as the data
require.

## Usage

``` r
use_glmnet(
  formula,
  data,
  prefix = "glmnet",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_xgboost(
  formula,
  data,
  prefix = "xgboost",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_kknn(
  formula,
  data,
  prefix = "kknn",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_ranger(
  formula,
  data,
  prefix = "ranger",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_earth(
  formula,
  data,
  prefix = "earth",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_cubist(
  formula,
  data,
  prefix = "cubist",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_kernlab_svm_rbf(
  formula,
  data,
  prefix = "kernlab",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_kernlab_svm_poly(
  formula,
  data,
  prefix = "kernlab",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_C5.0(
  formula,
  data,
  prefix = "C50",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_nnet(
  formula,
  data,
  prefix = "nnet",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_rpart(
  formula,
  data,
  prefix = "rpart",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_bag_tree_rpart(
  formula,
  data,
  prefix = "rpart",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_mgcv(
  formula,
  data,
  prefix = "mgcv",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_dbarts(
  formula,
  data,
  prefix = "dbarts",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_mixOmics(
  formula,
  data,
  prefix = "mixOmics",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)

use_xrf(
  formula,
  data,
  prefix = "xrf",
  verbose = FALSE,
  tune = TRUE,
  colors = TRUE,
  clipboard = FALSE
)
```

## Arguments

- formula:

  A simple model formula with no in-line functions. This will be used to
  template the recipe object as well as determining which outcome and
  predictor columns will be used.

- data:

  A data frame with the columns used in the analysis.

- prefix:

  A single character string to use as a prefix for the resulting
  objects.

- verbose:

  A single logical that determined whether comments are added to the
  printed code explaining why certain lines are used.

- tune:

  A single logical that controls if code for model tuning should be
  printed.

- colors:

  A single logical for coloring warnings and code snippets that require
  the users attention (ignored when `colors = FALSE`)

- clipboard:

  A single logical for whether the code output should be sent to the
  clip board or printed in the console.

## Value

Invisible `NULL` but code is printed to the console.

## Details

Based on the columns in `data`, certain recipe steps printed. For
example, if a model requires that qualitative predictors be converted to
numeric (say, using dummy variables) then an additional `step_dummy()`
is added. Otherwise that recipe step is not included in the output.

The syntax is opinionated and should not be considered the exact answer
for every data analysis. It has reasonable defaults.

## Examples

``` r
if (rlang::is_installed("modeldata")) {
  library(modeldata)
  data(ad_data)
  use_glmnet(Class ~ ., data = ad_data)

  data(Sacramento)
  use_glmnet(price ~ ., data = Sacramento, verbose = TRUE, prefix = "sac_homes")
}
#> 
#> Attaching package: ‘modeldata’
#> The following object is masked from ‘package:datasets’:
#> 
#>     penguins
#> glmnet_recipe <- 
#>   recipe(formula = Class ~ ., data = ad_data) |> 
#>   step_novel(all_nominal_predictors()) |> 
#>   step_dummy(all_nominal_predictors()) |> 
#>   step_zv(all_predictors()) |> 
#>   step_normalize(all_numeric_predictors()) 
#> 
#> glmnet_spec <- 
#>   logistic_reg(penalty = tune(), mixture = tune()) |> 
#>   set_mode("classification") |> 
#>   set_engine("glmnet") 
#> 
#> glmnet_workflow <- 
#>   workflow() |> 
#>   add_recipe(glmnet_recipe) |> 
#>   add_model(glmnet_spec) 
#> 
#> glmnet_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), mixture = c(0.05, 
#>     0.2, 0.4, 0.6, 0.8, 1)) 
#> 
#> glmnet_tune <- 
#>   tune_grid(glmnet_workflow, resamples = stop("add your rsample object"), grid = glmnet_grid) 
#> 
#> sac_homes_recipe <- 
#>   recipe(formula = price ~ ., data = Sacramento) |> 
#>   step_novel(all_nominal_predictors()) |> 
#>   ## This model requires the predictors to be numeric. The most common 
#>   ## method to convert qualitative predictors to numeric is to create 
#>   ## binary indicator variables (aka dummy variables) from these 
#>   ## predictors. 
#>   step_dummy(all_nominal_predictors()) |> 
#>   ## Regularization methods sum up functions of the model slope 
#>   ## coefficients. Because of this, the predictor variables should be on 
#>   ## the same scale. Before centering and scaling the numeric predictors, 
#>   ## any predictors with a single unique value are filtered out. 
#>   step_zv(all_predictors()) |> 
#>   step_normalize(all_numeric_predictors()) 
#> 
#> sac_homes_spec <- 
#>   linear_reg(penalty = tune(), mixture = tune()) |> 
#>   set_mode("regression") |> 
#>   set_engine("glmnet") 
#> 
#> sac_homes_workflow <- 
#>   workflow() |> 
#>   add_recipe(sac_homes_recipe) |> 
#>   add_model(sac_homes_spec) 
#> 
#> sac_homes_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), 
#>     mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) 
#> 
#> sac_homes_tune <- 
#>   tune_grid(sac_homes_workflow, resamples = stop("add your rsample object"), 
#>     grid = sac_homes_grid) 
#> 
```
