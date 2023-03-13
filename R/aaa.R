# nocov start

# Global vars ------------------------------------------------------------------

utils::globalVariables(
  c(
    # false positives from template code
    "all_nominal_predictors", "all_numeric_predictors", "boost_tree",
    "comments", "linear_reg", "logistic_reg", "multinom_reg", "set_engine",
    "set_mode", "step_dummy", "step_normalize", "step_novel", "step_zv",
    "step_string2factor", "colors", "workflow", "add_model", "add_recipe"
  )
)

# nocov end
