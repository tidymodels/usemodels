# all model templates

    glmn_recipe <- 
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
    
    glmn_model <- 
      linear_reg() %>% 
      set_mode("regression") %>% 
      set_engine("glmnet") 
    
    glmn_workflow <- 
      workflow() %>% 
      add_recipe(glmn_recipe) %>% 
      add_model(glmn_model) 
    
    NULL

---

    glmn_recipe <- 
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
    
    glmn_model <- 
      multinom_reg() %>% 
      set_mode("classification") %>% 
      set_engine("glmnet") 
    
    glmn_workflow <- 
      workflow() %>% 
      add_recipe(glmn_recipe) %>% 
      add_model(glmn_model) 
    
    NULL

---

    xgb_recipe <- 
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
    
    xgb_model <- 
      boost_tree() %>% 
      set_mode("regression") %>% 
      set_engine("xgboost") 
    
    xgb_workflow <- 
      workflow() %>% 
      add_recipe(xgb_recipe) %>% 
      add_model(xgb_model) 
    
    NULL

---

    xgb_recipe <- 
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
    
    xgb_model <- 
      boost_tree() %>% 
      set_mode("classification") %>% 
      set_engine("xgboost") 
    
    xgb_workflow <- 
      workflow() %>% 
      add_recipe(xgb_recipe) %>% 
      add_model(xgb_model) 
    
    NULL

---

    ranger_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) 
    
    ranger_model <- 
      rand_forest(trees = 1000) %>% 
      set_mode("regression") %>% 
      set_engine("ranger") 
    
    ranger_workflow <- 
      workflow() %>% 
      add_recipe(ranger_recipe) %>% 
      add_model(ranger_model) 
    
    NULL

---

    ranger_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) 
    
    ranger_model <- 
      rand_forest(trees = 1000) %>% 
      set_mode("classification") %>% 
      set_engine("ranger") 
    
    ranger_workflow <- 
      workflow() %>% 
      add_recipe(ranger_recipe) %>% 
      add_model(ranger_model) 
    
    NULL

---

    knn_recipe <- 
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
    
    knn_model <- 
      nearest_neighbor() %>% 
      set_mode("regression") %>% 
      set_engine("kknn") 
    
    knn_workflow <- 
      workflow() %>% 
      add_recipe(knn_recipe) %>% 
      add_model(knn_model) 
    
    NULL

---

    knn_recipe <- 
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
    
    knn_model <- 
      nearest_neighbor() %>% 
      set_mode("classification") %>% 
      set_engine("kknn") 
    
    knn_workflow <- 
      workflow() %>% 
      add_recipe(knn_recipe) %>% 
      add_model(knn_model) 
    
    NULL

---

    mars_recipe <- 
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
    
    mars_model <- 
      mars() %>% 
      set_mode("regression") %>% 
      set_engine("earth") 
    
    mars_workflow <- 
      workflow() %>% 
      add_recipe(mars_recipe) %>% 
      add_model(mars_model) 
    
    NULL

---

    mars_recipe <- 
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
    
    mars_model <- 
      mars() %>% 
      set_mode("classification") %>% 
      set_engine("earth") 
    
    mars_workflow <- 
      workflow() %>% 
      add_recipe(mars_recipe) %>% 
      add_model(mars_model) 
    
    NULL

---

    glmn_recipe <- 
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
    
    NULL

---

    glmn_recipe <- 
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
    
    glmn_model <- 
      multinom_reg(penalty = tune(), mixture = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("glmnet") 
    
    glmn_workflow <- 
      workflow() %>% 
      add_recipe(glmn_recipe) %>% 
      add_model(glmn_model) 
    
    glmn_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), mixture = c(0.05, 
        0.2, 0.4, 0.6, 0.8, 1)) 
    
    glmn_tune <- 
      tune_grid(glmn_workflow, resamples = stop("add your rsample object"), grid = glmn_grid) 
    
    NULL

---

    xgb_recipe <- 
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
    
    xgb_model <- 
      boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
        loss_reduction = tune(), sample_size = tune()) %>% 
      set_mode("regression") %>% 
      set_engine("xgboost") 
    
    xgb_workflow <- 
      workflow() %>% 
      add_recipe(xgb_recipe) %>% 
      add_model(xgb_model) 
    
    set.seed(27246)
    xgb_tune <-
      tune_grid(xgb_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    xgb_recipe <- 
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
    
    xgb_model <- 
      boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
        loss_reduction = tune(), sample_size = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("xgboost") 
    
    xgb_workflow <- 
      workflow() %>% 
      add_recipe(xgb_recipe) %>% 
      add_model(xgb_model) 
    
    set.seed(27246)
    xgb_tune <-
      tune_grid(xgb_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    ranger_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) 
    
    ranger_model <- 
      rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
      set_mode("regression") %>% 
      set_engine("ranger") 
    
    ranger_workflow <- 
      workflow() %>% 
      add_recipe(ranger_recipe) %>% 
      add_model(ranger_model) 
    
    set.seed(27246)
    ranger_tune <-
      tune_grid(ranger_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    ranger_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      ## For modeling, it is preferred to encode qualitative data as factors 
      ## (instead of character). 
      step_string2factor(one_of(island)) 
    
    ranger_model <- 
      rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
      set_mode("classification") %>% 
      set_engine("ranger") 
    
    ranger_workflow <- 
      workflow() %>% 
      add_recipe(ranger_recipe) %>% 
      add_model(ranger_model) 
    
    set.seed(27246)
    ranger_tune <-
      tune_grid(ranger_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    knn_recipe <- 
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
    
    knn_model <- 
      nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
      set_mode("regression") %>% 
      set_engine("kknn") 
    
    knn_workflow <- 
      workflow() %>% 
      add_recipe(knn_recipe) %>% 
      add_model(knn_model) 
    
    set.seed(27246)
    knn_tune <-
      tune_grid(knn_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    knn_recipe <- 
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
    
    knn_model <- 
      nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("kknn") 
    
    knn_workflow <- 
      workflow() %>% 
      add_recipe(knn_recipe) %>% 
      add_model(knn_model) 
    
    set.seed(27246)
    knn_tune <-
      tune_grid(knn_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    mars_recipe <- 
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
    
    mars_model <- 
      mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
      set_mode("regression") %>% 
      set_engine("earth") 
    
    mars_workflow <- 
      workflow() %>% 
      add_recipe(mars_recipe) %>% 
      add_model(mars_model) 
    
    ## MARS models can make predictions on many _sub_models_, meaning that we
    ## can evaluate many values of `num_terms` without much computational
    ## cost. A regular grid is used to exploit this property. The first term
    ## is only the intercept, so the grid is a sequence of even numbered
    ## values.
    mars_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
    
    mars_tune <- 
      tune_grid(mars_workflow, resamples = stop("add your rsample object"), grid = mars_grid) 
    
    NULL

---

    mars_recipe <- 
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
    
    mars_model <- 
      mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
      set_mode("classification") %>% 
      set_engine("earth") 
    
    mars_workflow <- 
      workflow() %>% 
      add_recipe(mars_recipe) %>% 
      add_model(mars_model) 
    
    ## MARS models can make predictions on many _sub_models_, meaning that we
    ## can evaluate many values of `num_terms` without much computational
    ## cost. A regular grid is used to exploit this property. The first term
    ## is only the intercept, so the grid is a sequence of even numbered
    ## values.
    mars_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
    
    mars_tune <- 
      tune_grid(mars_workflow, resamples = stop("add your rsample object"), grid = mars_grid) 
    
    NULL

---

    glmn_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    glmn_model <- 
      linear_reg() %>% 
      set_mode("regression") %>% 
      set_engine("glmnet") 
    
    glmn_workflow <- 
      workflow() %>% 
      add_recipe(glmn_recipe) %>% 
      add_model(glmn_model) 
    
    NULL

---

    glmn_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    glmn_model <- 
      multinom_reg() %>% 
      set_mode("classification") %>% 
      set_engine("glmnet") 
    
    glmn_workflow <- 
      workflow() %>% 
      add_recipe(glmn_recipe) %>% 
      add_model(glmn_model) 
    
    NULL

---

    xgb_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    xgb_model <- 
      boost_tree() %>% 
      set_mode("regression") %>% 
      set_engine("xgboost") 
    
    xgb_workflow <- 
      workflow() %>% 
      add_recipe(xgb_recipe) %>% 
      add_model(xgb_model) 
    
    NULL

---

    xgb_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    xgb_model <- 
      boost_tree() %>% 
      set_mode("classification") %>% 
      set_engine("xgboost") 
    
    xgb_workflow <- 
      workflow() %>% 
      add_recipe(xgb_recipe) %>% 
      add_model(xgb_model) 
    
    NULL

---

    ranger_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) 
    
    ranger_model <- 
      rand_forest(trees = 1000) %>% 
      set_mode("regression") %>% 
      set_engine("ranger") 
    
    ranger_workflow <- 
      workflow() %>% 
      add_recipe(ranger_recipe) %>% 
      add_model(ranger_model) 
    
    NULL

---

    ranger_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) 
    
    ranger_model <- 
      rand_forest(trees = 1000) %>% 
      set_mode("classification") %>% 
      set_engine("ranger") 
    
    ranger_workflow <- 
      workflow() %>% 
      add_recipe(ranger_recipe) %>% 
      add_model(ranger_model) 
    
    NULL

---

    knn_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    knn_model <- 
      nearest_neighbor() %>% 
      set_mode("regression") %>% 
      set_engine("kknn") 
    
    knn_workflow <- 
      workflow() %>% 
      add_recipe(knn_recipe) %>% 
      add_model(knn_model) 
    
    NULL

---

    knn_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    knn_model <- 
      nearest_neighbor() %>% 
      set_mode("classification") %>% 
      set_engine("kknn") 
    
    knn_workflow <- 
      workflow() %>% 
      add_recipe(knn_recipe) %>% 
      add_model(knn_model) 
    
    NULL

---

    mars_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    mars_model <- 
      mars() %>% 
      set_mode("regression") %>% 
      set_engine("earth") 
    
    mars_workflow <- 
      workflow() %>% 
      add_recipe(mars_recipe) %>% 
      add_model(mars_model) 
    
    NULL

---

    mars_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    mars_model <- 
      mars() %>% 
      set_mode("classification") %>% 
      set_engine("earth") 
    
    mars_workflow <- 
      workflow() %>% 
      add_recipe(mars_recipe) %>% 
      add_model(mars_model) 
    
    NULL

---

    glmn_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
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
    
    NULL

---

    glmn_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    glmn_model <- 
      multinom_reg(penalty = tune(), mixture = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("glmnet") 
    
    glmn_workflow <- 
      workflow() %>% 
      add_recipe(glmn_recipe) %>% 
      add_model(glmn_model) 
    
    glmn_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), mixture = c(0.05, 
        0.2, 0.4, 0.6, 0.8, 1)) 
    
    glmn_tune <- 
      tune_grid(glmn_workflow, resamples = stop("add your rsample object"), grid = glmn_grid) 
    
    NULL

---

    xgb_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    xgb_model <- 
      boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
        loss_reduction = tune(), sample_size = tune()) %>% 
      set_mode("regression") %>% 
      set_engine("xgboost") 
    
    xgb_workflow <- 
      workflow() %>% 
      add_recipe(xgb_recipe) %>% 
      add_model(xgb_model) 
    
    set.seed(27246)
    xgb_tune <-
      tune_grid(xgb_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    xgb_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
      step_zv(all_predictors()) 
    
    xgb_model <- 
      boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
        loss_reduction = tune(), sample_size = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("xgboost") 
    
    xgb_workflow <- 
      workflow() %>% 
      add_recipe(xgb_recipe) %>% 
      add_model(xgb_model) 
    
    set.seed(27246)
    xgb_tune <-
      tune_grid(xgb_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    ranger_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) 
    
    ranger_model <- 
      rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
      set_mode("regression") %>% 
      set_engine("ranger") 
    
    ranger_workflow <- 
      workflow() %>% 
      add_recipe(ranger_recipe) %>% 
      add_model(ranger_model) 
    
    set.seed(27246)
    ranger_tune <-
      tune_grid(ranger_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    ranger_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) 
    
    ranger_model <- 
      rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
      set_mode("classification") %>% 
      set_engine("ranger") 
    
    ranger_workflow <- 
      workflow() %>% 
      add_recipe(ranger_recipe) %>% 
      add_model(ranger_model) 
    
    set.seed(27246)
    ranger_tune <-
      tune_grid(ranger_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    knn_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    knn_model <- 
      nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
      set_mode("regression") %>% 
      set_engine("kknn") 
    
    knn_workflow <- 
      workflow() %>% 
      add_recipe(knn_recipe) %>% 
      add_model(knn_model) 
    
    set.seed(27246)
    knn_tune <-
      tune_grid(knn_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    knn_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) %>% 
      step_normalize(all_predictors(), -all_nominal()) 
    
    knn_model <- 
      nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
      set_mode("classification") %>% 
      set_engine("kknn") 
    
    knn_workflow <- 
      workflow() %>% 
      add_recipe(knn_recipe) %>% 
      add_model(knn_model) 
    
    set.seed(27246)
    knn_tune <-
      tune_grid(knn_workflow, resamples = stop("add your rsample object"), grid = stop("add number of candidate points"))
    
    NULL

---

    mars_recipe <- 
      recipe(formula = body_mass_g ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    mars_model <- 
      mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
      set_mode("regression") %>% 
      set_engine("earth") 
    
    mars_workflow <- 
      workflow() %>% 
      add_recipe(mars_recipe) %>% 
      add_model(mars_model) 
    
    mars_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
    
    mars_tune <- 
      tune_grid(mars_workflow, resamples = stop("add your rsample object"), grid = mars_grid) 
    
    NULL

---

    mars_recipe <- 
      recipe(formula = species ~ ., data = penguins) %>% 
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes()) %>% 
      step_zv(all_predictors()) 
    
    mars_model <- 
      mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
      set_mode("classification") %>% 
      set_engine("earth") 
    
    mars_workflow <- 
      workflow() %>% 
      add_recipe(mars_recipe) %>% 
      add_model(mars_model) 
    
    mars_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
    
    mars_tune <- 
      tune_grid(mars_workflow, resamples = stop("add your rsample object"), grid = mars_grid) 
    
    NULL

