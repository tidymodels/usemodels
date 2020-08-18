# all model templates

    test_config_1_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      ## Regularization methods sum up functions of the model slope 
      ## coefficients. Because of this, the predictor variables should be on 
      ## the same scale. Before centering and scaling the numeric predictors, 
      ## any predictors with a single unique value are filtered out. 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_1_dummies_model <- 
      linear_reg() %>% 
      set_mode("regression") %>% 
      set_engine("glmnet") 
    
    test_config_1_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_1_dummies_recipe) %>% 
      add_model(test_config_1_dummies_model) 
    
    NULL

---

    test_config_1_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      ## Regularization methods sum up functions of the model slope 
      ## coefficients. Because of this, the predictor variables should be on 
      ## the same scale. Before centering and scaling the numeric predictors, 
      ## any predictors with a single unique value are filtered out. 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_1_no_dummies_model <- 
      multinom_reg() %>% 
      set_mode("classification") %>% 
      set_engine("glmnet") 
    
    test_config_1_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_1_no_dummies_recipe) %>% 
      add_model(test_config_1_no_dummies_model) 
    
    NULL

---

    test_config_2_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. However, for this model, binary indicator variables can be 
      ## made for each of the levels of the factors (known as 'one-hot 
      ## encoding'). 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    test_config_2_dummies_model <- 
      boost_tree() %>% 
      set_mode("regression") %>% 
      set_engine("xgboost") 
    
    test_config_2_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_2_dummies_recipe) %>% 
      add_model(test_config_2_dummies_model) 
    
    NULL

---

    test_config_2_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. However, for this model, binary indicator variables can be 
      ## made for each of the levels of the factors (known as 'one-hot 
      ## encoding'). 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    test_config_2_no_dummies_model <- 
      boost_tree() %>% 
      set_mode("classification") %>% 
      set_engine("xgboost") 
    
    test_config_2_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_2_no_dummies_recipe) %>% 
      add_model(test_config_2_no_dummies_model) 
    
    NULL

---

    test_config_3_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) 
    
    test_config_3_dummies_model <- 
      rand_forest(trees = 1000) %>% 
      set_mode("regression") %>% 
      set_engine("ranger") 
    
    test_config_3_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_3_dummies_recipe) %>% 
      add_model(test_config_3_dummies_model) 
    
    NULL

---

    test_config_3_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) 
    
    test_config_3_no_dummies_model <- 
      rand_forest(trees = 1000) %>% 
      set_mode("classification") %>% 
      set_engine("ranger") 
    
    test_config_3_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_3_no_dummies_recipe) %>% 
      add_model(test_config_3_no_dummies_model) 
    
    NULL

---

    test_config_4_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      ## Since distance calculations are used, the predictor variables should 
      ## be on the same scale. Before centering and scaling the numeric 
      ## predictors, any predictors with a single unique value are filtered 
      ## out. 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_4_dummies_model <- 
      nearest_neighbor() %>% 
      set_mode("regression") %>% 
      set_engine("kknn") 
    
    test_config_4_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_4_dummies_recipe) %>% 
      add_model(test_config_4_dummies_model) 
    
    NULL

---

    test_config_4_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      ## Since distance calculations are used, the predictor variables should 
      ## be on the same scale. Before centering and scaling the numeric 
      ## predictors, any predictors with a single unique value are filtered 
      ## out. 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_4_no_dummies_model <- 
      nearest_neighbor() %>% 
      set_mode("classification") %>% 
      set_engine("kknn") 
    
    test_config_4_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_4_no_dummies_recipe) %>% 
      add_model(test_config_4_no_dummies_model) 
    
    NULL

---

    test_config_5_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    test_config_5_dummies_model <- 
      mars() %>% 
      set_mode("regression") %>% 
      set_engine("earth") 
    
    test_config_5_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_5_dummies_recipe) %>% 
      add_model(test_config_5_dummies_model) 
    
    NULL

---

    test_config_5_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    test_config_5_no_dummies_model <- 
      mars() %>% 
      set_mode("classification") %>% 
      set_engine("earth") 
    
    test_config_5_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_5_no_dummies_recipe) %>% 
      add_model(test_config_5_no_dummies_model) 
    
    NULL

---

    test_config_6_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      ## Regularization methods sum up functions of the model slope 
      ## coefficients. Because of this, the predictor variables should be on 
      ## the same scale. Before centering and scaling the numeric predictors, 
      ## any predictors with a single unique value are filtered out. 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_6_dummies_model <- 
      linear_reg(penalty = tune(), mixture = tune()) %>% 
      set_mode("regression") %>% 
      set_engine("glmnet") 
    
    test_config_6_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_6_dummies_recipe) %>% 
      add_model(test_config_6_dummies_model) 
    
    test_config_6_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), 
        mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) 
    
    test_config_6_dummies_tune <- 
      tune_grid(test_config_6_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = test_config_6_dummies_grid) 
    
    NULL

---

    test_config_6_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      ## Regularization methods sum up functions of the model slope 
      ## coefficients. Because of this, the predictor variables should be on 
      ## the same scale. Before centering and scaling the numeric predictors, 
      ## any predictors with a single unique value are filtered out. 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_6_no_dummies_model <- 
      multinom_reg(penalty = tune(), mixture = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("glmnet") 
    
    test_config_6_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_6_no_dummies_recipe) %>% 
      add_model(test_config_6_no_dummies_model) 
    
    test_config_6_no_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), 
        mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) 
    
    test_config_6_no_dummies_tune <- 
      tune_grid(test_config_6_no_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = test_config_6_no_dummies_grid) 
    
    NULL

---

    test_config_7_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. However, for this model, binary indicator variables can be 
      ## made for each of the levels of the factors (known as 'one-hot 
      ## encoding'). 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    test_config_7_dummies_model <- 
      boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
        loss_reduction = tune(), sample_size = tune()) %>% 
      set_mode("regression") %>% 
      set_engine("xgboost") 
    
    test_config_7_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_7_dummies_recipe) %>% 
      add_model(test_config_7_dummies_model) 
    
    set.seed(27246)
    test_config_7_dummies_tune <-
      tune_grid(test_config_7_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_7_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. However, for this model, binary indicator variables can be 
      ## made for each of the levels of the factors (known as 'one-hot 
      ## encoding'). 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    test_config_7_no_dummies_model <- 
      boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
        loss_reduction = tune(), sample_size = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("xgboost") 
    
    test_config_7_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_7_no_dummies_recipe) %>% 
      add_model(test_config_7_no_dummies_model) 
    
    set.seed(27246)
    test_config_7_no_dummies_tune <-
      tune_grid(test_config_7_no_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_8_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) 
    
    test_config_8_dummies_model <- 
      rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
      set_mode("regression") %>% 
      set_engine("ranger") 
    
    test_config_8_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_8_dummies_recipe) %>% 
      add_model(test_config_8_dummies_model) 
    
    set.seed(27246)
    test_config_8_dummies_tune <-
      tune_grid(test_config_8_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_8_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) 
    
    test_config_8_no_dummies_model <- 
      rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
      set_mode("classification") %>% 
      set_engine("ranger") 
    
    test_config_8_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_8_no_dummies_recipe) %>% 
      add_model(test_config_8_no_dummies_model) 
    
    set.seed(27246)
    test_config_8_no_dummies_tune <-
      tune_grid(test_config_8_no_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_9_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      ## Since distance calculations are used, the predictor variables should 
      ## be on the same scale. Before centering and scaling the numeric 
      ## predictors, any predictors with a single unique value are filtered 
      ## out. 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_9_dummies_model <- 
      nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
      set_mode("regression") %>% 
      set_engine("kknn") 
    
    test_config_9_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_9_dummies_recipe) %>% 
      add_model(test_config_9_dummies_model) 
    
    set.seed(27246)
    test_config_9_dummies_tune <-
      tune_grid(test_config_9_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_9_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      ## Since distance calculations are used, the predictor variables should 
      ## be on the same scale. Before centering and scaling the numeric 
      ## predictors, any predictors with a single unique value are filtered 
      ## out. 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_9_no_dummies_model <- 
      nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("kknn") 
    
    test_config_9_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_9_no_dummies_recipe) %>% 
      add_model(test_config_9_no_dummies_model) 
    
    set.seed(27246)
    test_config_9_no_dummies_tune <-
      tune_grid(test_config_9_no_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_10_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    test_config_10_dummies_model <- 
      mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
      set_mode("regression") %>% 
      set_engine("earth") 
    
    test_config_10_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_10_dummies_recipe) %>% 
      add_model(test_config_10_dummies_model) 
    
    ## MARS models can make predictions on many _sub_models_, meaning that we
    ## can evaluate many values of `num_terms` without much computational
    ## cost. A regular grid is used to exploit this property. The first term
    ## is only the intercept, so the grid is a sequence of even numbered
    ## values.
    test_config_10_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
    
    test_config_10_dummies_tune <- 
      tune_grid(test_config_10_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = test_config_10_dummies_grid) 
    
    NULL

---

    test_config_10_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      ## This model requires the predictors to be numeric. The most common 
      ## method to convert qualitative predictors to numeric is to create 
      ## binary indicator variables (aka dummy variables) from these 
      ## predictors. 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    test_config_10_no_dummies_model <- 
      mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
      set_mode("classification") %>% 
      set_engine("earth") 
    
    test_config_10_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_10_no_dummies_recipe) %>% 
      add_model(test_config_10_no_dummies_model) 
    
    ## MARS models can make predictions on many _sub_models_, meaning that we
    ## can evaluate many values of `num_terms` without much computational
    ## cost. A regular grid is used to exploit this property. The first term
    ## is only the intercept, so the grid is a sequence of even numbered
    ## values.
    test_config_10_no_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
    
    test_config_10_no_dummies_tune <- 
      tune_grid(test_config_10_no_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = test_config_10_no_dummies_grid) 
    
    NULL

---

    test_config_11_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_11_dummies_model <- 
      linear_reg() %>% 
      set_mode("regression") %>% 
      set_engine("glmnet") 
    
    test_config_11_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_11_dummies_recipe) %>% 
      add_model(test_config_11_dummies_model) 
    
    NULL

---

    test_config_11_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_11_no_dummies_model <- 
      multinom_reg() %>% 
      set_mode("classification") %>% 
      set_engine("glmnet") 
    
    test_config_11_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_11_no_dummies_recipe) %>% 
      add_model(test_config_11_no_dummies_model) 
    
    NULL

---

    test_config_12_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    test_config_12_dummies_model <- 
      boost_tree() %>% 
      set_mode("regression") %>% 
      set_engine("xgboost") 
    
    test_config_12_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_12_dummies_recipe) %>% 
      add_model(test_config_12_dummies_model) 
    
    NULL

---

    test_config_12_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    test_config_12_no_dummies_model <- 
      boost_tree() %>% 
      set_mode("classification") %>% 
      set_engine("xgboost") 
    
    test_config_12_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_12_no_dummies_recipe) %>% 
      add_model(test_config_12_no_dummies_model) 
    
    NULL

---

    test_config_13_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) 
    
    test_config_13_dummies_model <- 
      rand_forest(trees = 1000) %>% 
      set_mode("regression") %>% 
      set_engine("ranger") 
    
    test_config_13_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_13_dummies_recipe) %>% 
      add_model(test_config_13_dummies_model) 
    
    NULL

---

    test_config_13_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) 
    
    test_config_13_no_dummies_model <- 
      rand_forest(trees = 1000) %>% 
      set_mode("classification") %>% 
      set_engine("ranger") 
    
    test_config_13_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_13_no_dummies_recipe) %>% 
      add_model(test_config_13_no_dummies_model) 
    
    NULL

---

    test_config_14_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_14_dummies_model <- 
      nearest_neighbor() %>% 
      set_mode("regression") %>% 
      set_engine("kknn") 
    
    test_config_14_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_14_dummies_recipe) %>% 
      add_model(test_config_14_dummies_model) 
    
    NULL

---

    test_config_14_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_14_no_dummies_model <- 
      nearest_neighbor() %>% 
      set_mode("classification") %>% 
      set_engine("kknn") 
    
    test_config_14_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_14_no_dummies_recipe) %>% 
      add_model(test_config_14_no_dummies_model) 
    
    NULL

---

    test_config_15_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    test_config_15_dummies_model <- 
      mars() %>% 
      set_mode("regression") %>% 
      set_engine("earth") 
    
    test_config_15_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_15_dummies_recipe) %>% 
      add_model(test_config_15_dummies_model) 
    
    NULL

---

    test_config_15_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    test_config_15_no_dummies_model <- 
      mars() %>% 
      set_mode("classification") %>% 
      set_engine("earth") 
    
    test_config_15_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_15_no_dummies_recipe) %>% 
      add_model(test_config_15_no_dummies_model) 
    
    NULL

---

    test_config_16_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_16_dummies_model <- 
      linear_reg(penalty = tune(), mixture = tune()) %>% 
      set_mode("regression") %>% 
      set_engine("glmnet") 
    
    test_config_16_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_16_dummies_recipe) %>% 
      add_model(test_config_16_dummies_model) 
    
    test_config_16_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), 
        mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) 
    
    test_config_16_dummies_tune <- 
      tune_grid(test_config_16_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = test_config_16_dummies_grid) 
    
    NULL

---

    test_config_16_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_16_no_dummies_model <- 
      multinom_reg(penalty = tune(), mixture = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("glmnet") 
    
    test_config_16_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_16_no_dummies_recipe) %>% 
      add_model(test_config_16_no_dummies_model) 
    
    test_config_16_no_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, 
        length.out = 20), mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) 
    
    test_config_16_no_dummies_tune <- 
      tune_grid(test_config_16_no_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = test_config_16_no_dummies_grid) 
    
    NULL

---

    test_config_17_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    test_config_17_dummies_model <- 
      boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
        loss_reduction = tune(), sample_size = tune()) %>% 
      set_mode("regression") %>% 
      set_engine("xgboost") 
    
    test_config_17_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_17_dummies_recipe) %>% 
      add_model(test_config_17_dummies_model) 
    
    set.seed(27246)
    test_config_17_dummies_tune <-
      tune_grid(test_config_17_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_17_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    test_config_17_no_dummies_model <- 
      boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
        loss_reduction = tune(), sample_size = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("xgboost") 
    
    test_config_17_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_17_no_dummies_recipe) %>% 
      add_model(test_config_17_no_dummies_model) 
    
    set.seed(27246)
    test_config_17_no_dummies_tune <-
      tune_grid(test_config_17_no_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_18_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) 
    
    test_config_18_dummies_model <- 
      rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
      set_mode("regression") %>% 
      set_engine("ranger") 
    
    test_config_18_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_18_dummies_recipe) %>% 
      add_model(test_config_18_dummies_model) 
    
    set.seed(27246)
    test_config_18_dummies_tune <-
      tune_grid(test_config_18_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_18_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) 
    
    test_config_18_no_dummies_model <- 
      rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
      set_mode("classification") %>% 
      set_engine("ranger") 
    
    test_config_18_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_18_no_dummies_recipe) %>% 
      add_model(test_config_18_no_dummies_model) 
    
    set.seed(27246)
    test_config_18_no_dummies_tune <-
      tune_grid(test_config_18_no_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_19_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_19_dummies_model <- 
      nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
      set_mode("regression") %>% 
      set_engine("kknn") 
    
    test_config_19_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_19_dummies_recipe) %>% 
      add_model(test_config_19_dummies_model) 
    
    set.seed(27246)
    test_config_19_dummies_tune <-
      tune_grid(test_config_19_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_19_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    test_config_19_no_dummies_model <- 
      nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("kknn") 
    
    test_config_19_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_19_no_dummies_recipe) %>% 
      add_model(test_config_19_no_dummies_model) 
    
    set.seed(27246)
    test_config_19_no_dummies_tune <-
      tune_grid(test_config_19_no_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = stop("add number of candidate points"))
    
    NULL

---

    test_config_20_dummies_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    test_config_20_dummies_model <- 
      mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
      set_mode("regression") %>% 
      set_engine("earth") 
    
    test_config_20_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_20_dummies_recipe) %>% 
      add_model(test_config_20_dummies_model) 
    
    test_config_20_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
    
    test_config_20_dummies_tune <- 
      tune_grid(test_config_20_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = test_config_20_dummies_grid) 
    
    NULL

---

    test_config_20_no_dummies_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    test_config_20_no_dummies_model <- 
      mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
      set_mode("classification") %>% 
      set_engine("earth") 
    
    test_config_20_no_dummies_workflow <- 
      workflow() %>% 
      add_recipe(test_config_20_no_dummies_recipe) %>% 
      add_model(test_config_20_no_dummies_model) 
    
    test_config_20_no_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
    
    test_config_20_no_dummies_tune <- 
      tune_grid(test_config_20_no_dummies_workflow, resamples = stop("add your rsample object"), 
        grid = test_config_20_no_dummies_grid) 
    
    NULL

