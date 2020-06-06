zv_msg <- paste(
  "Before centering and scaling the numeric predictors, any predictors with",
  "a single unique value are filtered out."
)
dist_msg <-
  paste(
    "Since distance calculations are used, the predictor",
    "variables should be on the same scale."
  )
reg_msg <-
  paste(
    "Regularization methods sum up functions of the model slope coefficients.",
    "Because of this, the predictor variables should be on the same scale."
  )
dummy_msg <-
  paste(
    "This model requires the predictors to be numeric. The most common method to",
    "convert qualitative predictors to numeric is to create binary indicator",
    "variables (aka dummy variables) from these predictors."
  )
dummy_hot_msg <-
  paste(
    dummy_msg,
    "However, for this model, binary indicator variables can be made for",
    "each of the levels of the factors (known as 'one-hot encoding')."
  )
string_to_factor_msg <-
  paste(
    "For modeling, it is preferred to encode qualitative data as factors",
    "(instead of character)."
  )

