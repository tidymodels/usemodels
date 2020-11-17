#' Functions to create boilerplate code for specific models
#'
#' These functions make suggestions for code when using a few common models.
#' They print out code to the console that could be considered minimal syntax
#' for their respective techniques. Each creates a prototype recipe and workflow
#' object that can be edited or updated as the data require.
#'
#' @param formula A simple model formula with no in-line functions. This will
#' be used to template the recipe object as well as determining which outcome
#' and predictor columns will be used.
#' @param data A data frame with the columns used in the analysis.
#' @param prefix A single character string to use as a prefix for the resulting
#'  objects.
#' @param verbose A single logical that determined whether comments are added to
#' the printed code explaining why certain lines are used.
#' @param tune A single logical that controls if code for model tuning should be
#' printed.
#' @param colors A single logical for coloring warnings and code snippets that
#'  require the users attention.
#' @return Invisible `NULL` but code is printed to the console.
#' @details
#' Based on the columns in `data`, certain recipe steps printed. For example, if
#' a model requires that qualitative predictors be converted to numeric (say,
#' using dummy variables) then an additional `step_dummy()` is added. Otherwise
#' that recipe step is not included in the output.
#'
#' The syntax is opinionated and should not be considered the exact answer for
#' every data analysis. It has reasonable defaults.
#' @examples
#' library(palmerpenguins)
#' data(penguins)
#' use_glmnet(species ~ ., data = penguins)
#' use_glmnet( body_mass_g ~ ., data = penguins, verbose = TRUE, prefix = "gunter")
#' @export
#' @rdname templates
use_glmnet <- function(formula, data, prefix = "glmnet", verbose = FALSE, tune = TRUE, colors = TRUE) {
  rec_cl <- initial_recipe_call(match.call())
  rec_syntax <-
    paste0(prefix, "_recipe") %>%
    assign_value(!!rec_cl)

  rec <- recipes::recipe(formula, data)

  rec_syntax <-
    rec_syntax %>%
    factor_check(rec, add = verbose, colors = colors)

  if (has_factor_pred(rec)) {
    rec_syntax <-
      add_steps_dummy_vars(rec_syntax, add = verbose, colors = colors)
  }
  rec_syntax <-
    rec_syntax %>%
    add_comment(paste(reg_msg, zv_msg), add = verbose, colors = colors) %>%
    add_steps_normalization()

  mod_mode <- model_mode(rec)

  if (tune) {
    prm <- rlang::exprs(penalty = tune(), mixture = tune())
  } else {
    prm <- NULL
  }

  if (mod_mode == "classification") {
    num_lvl <- y_lvl(rec)
    if (num_lvl == 2) {
      mod_syntax <-
        paste0(prefix, "_spec") %>%
        assign_value(!!rlang::call2("logistic_reg", !!!prm)) %>%
        pipe_value(set_mode("classification"))

    } else {
      mod_syntax <-
        paste0(prefix, "_spec") %>%
        assign_value(!!rlang::call2("multinom_reg", !!!prm)) %>%
        pipe_value(set_mode("classification"))

    }
  } else {
    mod_syntax <-
      paste0(prefix, "_spec") %>%
      assign_value(!!rlang::call2("linear_reg", !!!prm)) %>%
      pipe_value(set_mode("regression"))
  }

  mod_syntax <-
    mod_syntax %>%
    pipe_value(set_engine("glmnet"))

  cat(rec_syntax, "\n\n")
  cat(mod_syntax, "\n\n")
  cat(template_workflow(prefix), "\n\n")

  if (tune) {
    glmn_grid <- rlang::expr(
      glmn_grid <-
        tidyr::crossing(
          penalty = 10 ^ seq(-6, -1, length.out = 20),
          mixture = c(0.05, .2, .4, .6, .8, 1)
        )
    )
    glmn_grid[[2]] <- rlang::sym(paste0(prefix, "_grid"))
    cat(rlang::expr_text(glmn_grid, width = expr_width), "\n\n")
    cat(template_tune_with_grid(prefix, colors = colors), "\n\n")
  }
  invisible(NULL)
}

#' @export
#' @rdname templates
use_xgboost <- function(formula, data, prefix = "xgboost", verbose = FALSE, tune = TRUE, colors = TRUE) {
  rec_cl <- initial_recipe_call(match.call())
  rec_syntax <-
    paste0(prefix, "_recipe") %>%
    assign_value(!!rec_cl)

  rec <- recipe(formula, data)

  rec_syntax <-
    rec_syntax %>%
    factor_check(rec, add = verbose, colors = colors)

  if (has_factor_pred(rec)) {
    rec_syntax <-
      add_steps_dummy_vars(rec_syntax,
                           hot = TRUE,
                           add = verbose,
                           colors = colors)
  }

  rec_syntax <- pipe_value(rec_syntax, step_zv(all_predictors()))

  if (tune) {
    prm <-
      rlang::exprs(
        trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(),
        loss_reduction = tune(), sample_size = tune()
      )
  } else {
    prm <- NULL
  }

  mod_syntax <-
    paste0(prefix, "_spec") %>%
    assign_value(!!rlang::call2("boost_tree", !!!prm)) %>%
    pipe_value(set_mode(!!model_mode(rec))) %>%
    pipe_value(set_engine("xgboost"))

  cat(rec_syntax, "\n\n")
  cat(mod_syntax, "\n\n")
  cat(template_workflow(prefix), "\n\n")
  if (tune) {
    cat(template_tune_no_grid(prefix, colors = colors), "\n\n", sep = "")
  }
  invisible(NULL)
}

# ------------------------------------------------------------------------------

#' @export
#' @rdname templates
use_kknn <- function(formula, data, prefix = "kknn", verbose = FALSE, tune = TRUE, colors = TRUE) {
  rec_cl <- initial_recipe_call(match.call())
  rec_syntax <-
    paste0(prefix, "_recipe") %>%
    assign_value(!!rec_cl)

  rec <- recipes::recipe(formula, data)

  rec_syntax <-
    rec_syntax %>%
    factor_check(rec, add = verbose, colors= colors)

  if (has_factor_pred(rec)) {
    rec_syntax <-
      add_steps_dummy_vars(rec_syntax, add = verbose, colors = colors)
  }
  rec_syntax <-
    rec_syntax %>%
    add_comment(paste(dist_msg, zv_msg), add = verbose, colors = colors) %>%
    add_steps_normalization()

  if (tune) {
    prm <- rlang::exprs(neighbors = tune(), weight_func = tune())
  } else {
    prm <- NULL
  }

  mod_syntax <-
    paste0(prefix, "_spec") %>%
    assign_value(!!rlang::call2("nearest_neighbor", !!!prm)) %>%
    pipe_value(set_mode(!!model_mode(rec))) %>%
    pipe_value(set_engine("kknn"))

  cat(rec_syntax, "\n\n")
  cat(mod_syntax, "\n\n")
  cat(template_workflow(prefix), "\n\n")
  if (tune) {
    cat(template_tune_no_grid(prefix, colors = colors), "\n\n", sep = "")
  }
  invisible(NULL)
}

# ------------------------------------------------------------------------------

#' @export
#' @rdname templates
use_ranger <- function(formula, data, prefix = "ranger", verbose = FALSE, tune = TRUE, colors = TRUE) {
  rec_cl <- initial_recipe_call(match.call())
  rec_syntax <-
    paste0(prefix, "_recipe") %>%
    assign_value(!!rec_cl)

  rec <- recipes::recipe(formula, data)

  rec_syntax <-
    rec_syntax %>%
    factor_check(rec, add = verbose, colors= colors)

  # TODO add a check for the factor levels that are an issue for

  if (tune) {
    prm <- rlang::exprs(mtry = tune(), min_n = tune(), trees = 1000)
  } else {
    prm <- prm <- rlang::exprs(trees = 1000)
  }

  mod_syntax <-
    paste0(prefix, "_spec") %>%
    assign_value(!!rlang::call2("rand_forest", !!!prm)) %>%
    pipe_value(set_mode(!!model_mode(rec))) %>%
    pipe_value(set_engine("ranger"))

  cat(rec_syntax, "\n\n")
  cat(mod_syntax, "\n\n")
  cat(template_workflow(prefix), "\n\n")
  if (tune) {

    cat(template_tune_no_grid(prefix, colors = colors), "\n\n", sep = "")
  }
  invisible(NULL)
}

# ------------------------------------------------------------------------------

#' @export
#' @rdname templates
use_earth <- function(formula, data, prefix = "earth", verbose = FALSE, tune = TRUE, colors = TRUE) {
  rec_cl <- initial_recipe_call(match.call())
  rec_syntax <-
    paste0(prefix, "_recipe") %>%
    assign_value(!!rec_cl)

  rec <- recipe(formula, data)

  rec_syntax <-
    rec_syntax %>%
    factor_check(rec, add = verbose, colors= colors)

  if (has_factor_pred(rec)) {
    rec_syntax <-
      add_steps_dummy_vars(rec_syntax, add = verbose, colors = colors)
  }

  rec_syntax <- pipe_value(rec_syntax, step_zv(all_predictors()))

  if (tune) {
    prm <-
      rlang::exprs(
        num_terms = tune(), prod_degree = tune(),  prune_method = "none"
      )
  } else {
    prm <- NULL
  }

  mod_syntax <-
    paste0(prefix, "_spec") %>%
    assign_value(!!rlang::call2("mars", !!!prm)) %>%
    pipe_value(set_mode(!!model_mode(rec))) %>%
    pipe_value(set_engine("earth"))

  cat(rec_syntax, "\n\n")
  cat(mod_syntax, "\n\n")
  cat(template_workflow(prefix), "\n\n")
  if (tune) {
    # We can only have as many terms as data points but maybe we should
    # give some wiggle room for resampling. Also, we will have a sequence of odd
    # numbered terms so divide by 2 and keep an integer.
    term_max <- floor(min(12, floor(floor(nrow(data) * 0.75)))/2)

    mars_grid <- rlang::expr(
      mars_grid <-
        tidyr::crossing(num_terms = 2 * (1:!!term_max), prod_degree = 1:2)
    )
    mars_grid[[2]] <- rlang::sym(paste0(prefix, "_grid"))
    top_level_comment(
      "MARS models can make predictions on many _sub_models_, meaning that we can",
      "evaluate many values of `num_terms` without much computational cost.",
      "A regular grid is used to exploit this property.",
      "The first term is only the intercept, so the grid is a sequence of even",
      "numbered values.",
      add = verbose,
      colors = colors
    )
    cat(rlang::expr_text(mars_grid, width = expr_width), "\n\n")
    cat(template_tune_with_grid(prefix, colors = colors), "\n\n")
  }
  invisible(NULL)
}

# ------------------------------------------------------------------------------

#' @export
#' @rdname templates
use_cubist <- function(formula, data, prefix = "cubist", verbose = FALSE, tune = TRUE, colors = TRUE) {
  rec_cl <- initial_recipe_call(match.call())
  rec_syntax <-
    paste0(prefix, "_recipe") %>%
    assign_value(!!rec_cl)

  rec <- recipes::recipe(formula, data)

  rec_syntax <-
    rec_syntax %>%
    factor_check(rec, add = verbose, colors= colors)

  rec_syntax <- pipe_value(rec_syntax, step_zv(all_predictors()))

  if (tune) {
    prm <- rlang::exprs(committees = tune(), neighbors = tune())
  } else {
    prm <- NULL
  }

  mod_syntax <-
    paste0(prefix, "_spec") %>%
    assign_value(!!rlang::call2("cubist_rules", !!!prm)) %>%
    pipe_value(set_engine("Cubist"))

  cat("library(rules)\n\n")
  cat(rec_syntax, "\n\n")
  cat(mod_syntax, "\n\n")
  cat(template_workflow(prefix), "\n\n")
  if (tune) {
    cubist_grid <- rlang::expr(
      cubist_grid <-
        tidyr::crossing(committees = c(1:9, (1:5) * 10), neighbors = c(0, 3, 6, 9))
    )
    cubist_grid[[2]] <- rlang::sym(paste0(prefix, "_grid"))
    cat(rlang::expr_text(cubist_grid, width = expr_width), "\n\n")
    cat(template_tune_with_grid(prefix, colors = colors), "\n\n")
  }
  invisible(NULL)
}

