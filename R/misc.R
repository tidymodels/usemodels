model_mode <- function(rec) {
  var_roles <- summary(rec)
  y_types <- var_roles$type[var_roles$role == "outcome"]
  y_types <- unique(y_types)
  if (length(y_types) > 1) {
    rlang::abort("outcomes are of different types.")
  }
  if (all(y_types == "numeric")) {
    mod_mode <- "regression"
  } else {
    mod_mode <- "classification"
  }
  mod_mode
}

y_lvl <- function(rec) {
  mod_mode <- model_mode(rec)
  if (mod_mode == "regression") {
    return(NULL)
  }
  var_roles <- summary(rec)
  y_cols <- var_roles$variable[var_roles$role == "outcome"]
  y_dat <- rec$template %>% dplyr::select(one_of(y_cols)) %>% dplyr::pull(1)
  length(levels(y_dat))
}

has_factor_pred <- function(x) {
  info <- summary(x)
  pred_types <- info$type[info$role == "predictor"]
  any(pred_types == "nominal")
}

num_pred_col <- function(x) {
  info <- summary(x)
  sum(info$role == "predictor")
}

# ------------------------------------------------------------------------------
# helper functions

expr_width <- 74L

assign_value <- function(name, value, cr = TRUE) {
  value <- rlang::enexpr(value)
  value <- rlang::expr_text(value, width = expr_width)
  chr_assign(name, value, cr)
}
chr_assign <- function(name, value, cr = TRUE) {
  name <- paste(name, "<-")
  if (cr) {
    res <- c(name, paste0("\n  ", value))
  } else {
    res <- paste(name, value)
  }
  res
}
pipe_value <- function(base, value) {
  # Find last non-comment line, add a `%>%` to the end, then add another line
  value <- rlang::enexpr(value)
  value <- rlang::expr_text(value, width = expr_width)
  clean_base <- gsub("\\n", "", base)
  clean_base <- trimws(base, which = "left")
  not_comment <- seq_along(base)[!grepl("## ", clean_base)]
  n <- max(1, max(not_comment))
  base[n] <- paste(base[n], "%>%")
  c(base, paste0("\n  ", value))
}
add_comment <- function(base, value, add = TRUE, colors = TRUE) {
  if (!add) {
    return(base)
  }
  if (!is.character(value)) {
    rlang::abort("`value` must be character.")
  }

  value <- strwrap(value, width = expr_width, prefix = "## ")
  if (colors) {
    value <- tune::get_tune_colors()$message$warning(value)
  }

  res <- c(base, paste0("\n  ", value))
  res
}
add_steps_dummy_vars <- function(base, hot = FALSE, add = FALSE, colors = TRUE) {
  base <- base %>%
    pipe_value(step_novel(all_nominal(), -all_outcomes()))
  if (hot) {
    base <- base %>%
      add_comment(dummy_hot_msg, add, colors = colors) %>%
      pipe_value(step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE))
  } else {
    base <- base  %>%
      add_comment(dummy_msg, add, colors = colors) %>%
      pipe_value(step_dummy(all_nominal(), -all_outcomes()))
  }
  base
}
add_steps_normalization <- function(base) {
  base %>%
    pipe_value(step_zv(all_predictors())) %>%
    pipe_value(step_normalize(all_predictors(), -all_nominal()))
}
factor_check <- function(base, rec, add, colors = TRUE) {
  var_roles <- summary(rec)
  nominal <- var_roles$variable[var_roles$type == "nominal"]
  is_str <-
    purrr::map_lgl(rec$template %>% dplyr::select(dplyr::one_of(nominal)),
                   rlang::is_character)
  if (any(is_str)) {
    nominal <- rlang::syms(nominal[is_str])
    selector <- rlang::expr(one_of(!!!nominal))
    step_expr <- rlang::expr(step_string2factor(!!selector))
    base <-
      base %>%
      add_comment(string_to_factor_msg, add = add, colors = colors) %>%
      pipe_value(!!step_expr)
  }
  base
}
top_level_comment <- function(..., add = FALSE, colors = TRUE) {
  if (!add) {
    return(invisible(NULL))
  }
  value <- paste(...)
  value <- strwrap(value, width = expr_width, prefix = "## ")
  if (colors) {
    value <- tune::get_tune_colors()$message$warning(value)
  }

  cat(paste0(value, collapse = "\n"))
  cat("\n")
}

template_workflow <- function(prefix) {
  paste0(prefix, "_workflow") %>%
    assign_value(workflow()) %>%
    pipe_value(add_recipe(!!rlang::sym(paste0(prefix, "_recipe")))) %>%
    pipe_value(add_model(!!rlang::sym(paste0(prefix, "_spec"))))
}

template_tune_with_grid <- function(prefix, colors = TRUE) {
  tune_expr <-
    rlang::call2("tune_grid",
                 sym(paste0(prefix, "_workflow")),
                 resamples = expr(stop("add your rsample object")),
                 grid = sym(paste0(prefix, "_grid")))
  res <- assign_value(paste0(prefix, "_tune"), !!tune_expr)
  if (colors) {
    res <- sub(
      "stop(\"add your rsample object\")",
      tune::get_tune_colors()$message$danger("stop(\"add your rsample object\")"),
      res,
      fixed = TRUE
    )
  }
  res
}
template_tune_no_grid <- function(prefix, seed = sample.int(10^5, 1), colors = TRUE) {
  tune_expr <-
    rlang::call2(
      "tune_grid",
      sym(paste0(prefix, "_workflow")),
      resamples = expr(stop("add your rsample object")),
      grid = expr(stop("add number of candidate points"))
    )

  res <- c(paste0("set.seed(", seed,")\n"),
           assign_value(paste0(prefix, "_tune"), !!tune_expr))

  if (colors) {
    res <- sub(
      "stop(\"add your rsample object\")",
      tune::get_tune_colors()$message$danger("stop(\"add your rsample object\")"),
      res,
      fixed = TRUE
    )
    res <- sub(
      "stop(\"add number of candidate points\")",
      tune::get_tune_colors()$message$danger("stop(\"add number of candidate points\")"),
      res,
      fixed = TRUE
    )
  }
  res
}

# Take the call to the template function and turn it into a call to `recipe()`
initial_recipe_call <- function(cl) {
  cl$tune <- NULL
  cl$verbose <-  NULL
  cl$colors <-  NULL
  cl$prefix <-  NULL
  rec_cl <- cl
  rec_cl[[1]] <- rlang::expr(recipe)
  rec_cl
}


