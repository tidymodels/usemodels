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
      ## predictors. However, for this model, binary indicator variables can be 
      ## made for each of the levels of the factors (known as 'one-hot 
      ## encoding'). 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
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
      ## predictors. However, for this model, binary indicator variables can be 
      ## made for each of the levels of the factors (known as 'one-hot 
      ## encoding'). 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
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
      step_string2factor(one_of(island)) %>% 
      step_novel(all_nominal(), -all_outcomes()) %>% 
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
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
      step_dummy(all_nominal(), -all_outcomes(), one_hot = TRUE) %>% 
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

