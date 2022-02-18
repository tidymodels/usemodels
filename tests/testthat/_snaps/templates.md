# all model templates

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_1_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        ## Regularization methods sum up functions of the model slope 
        ## coefficients. Because of this, the predictor variables should be on 
        ## the same scale. Before centering and scaling the numeric predictors, 
        ## any predictors with a single unique value are filtered out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_1_dummies_spec <- 
        linear_reg() %>% 
        set_mode("regression") %>% 
        set_engine("glmnet") 
      
      test_config_1_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_1_dummies_recipe) %>% 
        add_model(test_config_1_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_1_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        ## Regularization methods sum up functions of the model slope 
        ## coefficients. Because of this, the predictor variables should be on 
        ## the same scale. Before centering and scaling the numeric predictors, 
        ## any predictors with a single unique value are filtered out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_1_no_dummies_spec <- 
        multinom_reg() %>% 
        set_mode("classification") %>% 
        set_engine("glmnet") 
      
      test_config_1_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_1_no_dummies_recipe) %>% 
        add_model(test_config_1_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_2_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. However, for this model, binary indicator variables can be 
        ## made for each of the levels of the factors (known as 'one-hot 
        ## encoding'). 
        step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% 
        step_zv(all_predictors()) 
      
      test_config_2_dummies_spec <- 
        boost_tree() %>% 
        set_mode("regression") %>% 
        set_engine("xgboost") 
      
      test_config_2_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_2_dummies_recipe) %>% 
        add_model(test_config_2_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_2_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. However, for this model, binary indicator variables can be 
        ## made for each of the levels of the factors (known as 'one-hot 
        ## encoding'). 
        step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% 
        step_zv(all_predictors()) 
      
      test_config_2_no_dummies_spec <- 
        boost_tree() %>% 
        set_mode("classification") %>% 
        set_engine("xgboost") 
      
      test_config_2_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_2_no_dummies_recipe) %>% 
        add_model(test_config_2_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_3_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) 
      
      test_config_3_dummies_spec <- 
        rand_forest(trees = 1000) %>% 
        set_mode("regression") %>% 
        set_engine("ranger") 
      
      test_config_3_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_3_dummies_recipe) %>% 
        add_model(test_config_3_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_3_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) 
      
      test_config_3_no_dummies_spec <- 
        rand_forest(trees = 1000) %>% 
        set_mode("classification") %>% 
        set_engine("ranger") 
      
      test_config_3_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_3_no_dummies_recipe) %>% 
        add_model(test_config_3_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_4_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        ## Since distance calculations are used, the predictor variables should 
        ## be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_4_dummies_spec <- 
        nearest_neighbor() %>% 
        set_mode("regression") %>% 
        set_engine("kknn") 
      
      test_config_4_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_4_dummies_recipe) %>% 
        add_model(test_config_4_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_4_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        ## Since distance calculations are used, the predictor variables should 
        ## be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_4_no_dummies_spec <- 
        nearest_neighbor() %>% 
        set_mode("classification") %>% 
        set_engine("kknn") 
      
      test_config_4_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_4_no_dummies_recipe) %>% 
        add_model(test_config_4_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_5_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) 
      
      test_config_5_dummies_spec <- 
        mars() %>% 
        set_mode("regression") %>% 
        set_engine("earth") 
      
      test_config_5_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_5_dummies_recipe) %>% 
        add_model(test_config_5_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_5_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) 
      
      test_config_5_no_dummies_spec <- 
        mars() %>% 
        set_mode("classification") %>% 
        set_engine("earth") 
      
      test_config_5_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_5_no_dummies_recipe) %>% 
        add_model(test_config_5_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      library(rules)
      
      test_config_6_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_zv(all_predictors()) 
      
      test_config_6_dummies_spec <- 
        cubist_rules() %>% 
        set_engine("Cubist") 
      
      test_config_6_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_6_dummies_recipe) %>% 
        add_model(test_config_6_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_7_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## Since dot product calculations are used, the predictor variables 
        ## should be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_7_dummies_spec <- 
        svm_poly() %>% 
        set_mode("regression") 
      
      test_config_7_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_7_dummies_recipe) %>% 
        add_model(test_config_7_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_7_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## Since dot product calculations are used, the predictor variables 
        ## should be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_7_no_dummies_spec <- 
        svm_poly() %>% 
        set_mode("classification") 
      
      test_config_7_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_7_no_dummies_recipe) %>% 
        add_model(test_config_7_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_8_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## Since dot product calculations are used, the predictor variables 
        ## should be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_8_dummies_spec <- 
        svm_rbf() %>% 
        set_mode("regression") 
      
      test_config_8_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_8_dummies_recipe) %>% 
        add_model(test_config_8_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_8_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## Since dot product calculations are used, the predictor variables 
        ## should be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_8_no_dummies_spec <- 
        svm_rbf() %>% 
        set_mode("classification") 
      
      test_config_8_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_8_no_dummies_recipe) %>% 
        add_model(test_config_8_no_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_9_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) 
      
      test_config_9_no_dummies_spec <- 
        boost_tree() %>% 
        set_mode("classification") %>% 
        set_engine("C5.0") 
      
      test_config_9_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_9_no_dummies_recipe) %>% 
        add_model(test_config_9_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_10_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        ## Regularization methods sum up functions of the model slope 
        ## coefficients. Because of this, the predictor variables should be on 
        ## the same scale. Before centering and scaling the numeric predictors, 
        ## any predictors with a single unique value are filtered out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_10_dummies_spec <- 
        linear_reg(penalty = tune(), mixture = tune()) %>% 
        set_mode("regression") %>% 
        set_engine("glmnet") 
      
      test_config_10_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_10_dummies_recipe) %>% 
        add_model(test_config_10_dummies_spec) 
      
      test_config_10_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), 
          mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) 
      
      test_config_10_dummies_tune <- 
        tune_grid(test_config_10_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = test_config_10_dummies_grid) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_10_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        ## Regularization methods sum up functions of the model slope 
        ## coefficients. Because of this, the predictor variables should be on 
        ## the same scale. Before centering and scaling the numeric predictors, 
        ## any predictors with a single unique value are filtered out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_10_no_dummies_spec <- 
        multinom_reg(penalty = tune(), mixture = tune()) %>% 
        set_mode("classification") %>% 
        set_engine("glmnet") 
      
      test_config_10_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_10_no_dummies_recipe) %>% 
        add_model(test_config_10_no_dummies_spec) 
      
      test_config_10_no_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, 
          length.out = 20), mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) 
      
      test_config_10_no_dummies_tune <- 
        tune_grid(test_config_10_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = test_config_10_no_dummies_grid) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_11_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. However, for this model, binary indicator variables can be 
        ## made for each of the levels of the factors (known as 'one-hot 
        ## encoding'). 
        step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% 
        step_zv(all_predictors()) 
      
      test_config_11_dummies_spec <- 
        boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
          loss_reduction = tune(), sample_size = tune()) %>% 
        set_mode("regression") %>% 
        set_engine("xgboost") 
      
      test_config_11_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_11_dummies_recipe) %>% 
        add_model(test_config_11_dummies_spec) 
      
      set.seed(27246)
      test_config_11_dummies_tune <-
        tune_grid(test_config_11_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_11_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. However, for this model, binary indicator variables can be 
        ## made for each of the levels of the factors (known as 'one-hot 
        ## encoding'). 
        step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% 
        step_zv(all_predictors()) 
      
      test_config_11_no_dummies_spec <- 
        boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
          loss_reduction = tune(), sample_size = tune()) %>% 
        set_mode("classification") %>% 
        set_engine("xgboost") 
      
      test_config_11_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_11_no_dummies_recipe) %>% 
        add_model(test_config_11_no_dummies_spec) 
      
      set.seed(27246)
      test_config_11_no_dummies_tune <-
        tune_grid(test_config_11_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_12_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) 
      
      test_config_12_dummies_spec <- 
        rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
        set_mode("regression") %>% 
        set_engine("ranger") 
      
      test_config_12_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_12_dummies_recipe) %>% 
        add_model(test_config_12_dummies_spec) 
      
      set.seed(27246)
      test_config_12_dummies_tune <-
        tune_grid(test_config_12_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_12_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) 
      
      test_config_12_no_dummies_spec <- 
        rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
        set_mode("classification") %>% 
        set_engine("ranger") 
      
      test_config_12_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_12_no_dummies_recipe) %>% 
        add_model(test_config_12_no_dummies_spec) 
      
      set.seed(27246)
      test_config_12_no_dummies_tune <-
        tune_grid(test_config_12_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_13_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        ## Since distance calculations are used, the predictor variables should 
        ## be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_13_dummies_spec <- 
        nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
        set_mode("regression") %>% 
        set_engine("kknn") 
      
      test_config_13_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_13_dummies_recipe) %>% 
        add_model(test_config_13_dummies_spec) 
      
      set.seed(27246)
      test_config_13_dummies_tune <-
        tune_grid(test_config_13_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_13_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        ## Since distance calculations are used, the predictor variables should 
        ## be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_13_no_dummies_spec <- 
        nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
        set_mode("classification") %>% 
        set_engine("kknn") 
      
      test_config_13_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_13_no_dummies_recipe) %>% 
        add_model(test_config_13_no_dummies_spec) 
      
      set.seed(27246)
      test_config_13_no_dummies_tune <-
        tune_grid(test_config_13_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_14_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) 
      
      test_config_14_dummies_spec <- 
        mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
        set_mode("regression") %>% 
        set_engine("earth") 
      
      test_config_14_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_14_dummies_recipe) %>% 
        add_model(test_config_14_dummies_spec) 
      
      ## MARS models can make predictions on many _sub_models_, meaning that we
      ## can evaluate many values of `num_terms` without much computational
      ## cost. A regular grid is used to exploit this property. The first term
      ## is only the intercept, so the grid is a sequence of even numbered
      ## values.
      test_config_14_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
      
      test_config_14_dummies_tune <- 
        tune_grid(test_config_14_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = test_config_14_dummies_grid) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_14_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        ## This model requires the predictors to be numeric. The most common 
        ## method to convert qualitative predictors to numeric is to create 
        ## binary indicator variables (aka dummy variables) from these 
        ## predictors. 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) 
      
      test_config_14_no_dummies_spec <- 
        mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
        set_mode("classification") %>% 
        set_engine("earth") 
      
      test_config_14_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_14_no_dummies_recipe) %>% 
        add_model(test_config_14_no_dummies_spec) 
      
      ## MARS models can make predictions on many _sub_models_, meaning that we
      ## can evaluate many values of `num_terms` without much computational
      ## cost. A regular grid is used to exploit this property. The first term
      ## is only the intercept, so the grid is a sequence of even numbered
      ## values.
      test_config_14_no_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
      
      test_config_14_no_dummies_tune <- 
        tune_grid(test_config_14_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = test_config_14_no_dummies_grid) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      library(rules)
      
      test_config_15_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) %>% 
        step_zv(all_predictors()) 
      
      test_config_15_dummies_spec <- 
        cubist_rules(committees = tune(), neighbors = tune()) %>% 
        set_engine("Cubist") 
      
      test_config_15_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_15_dummies_recipe) %>% 
        add_model(test_config_15_dummies_spec) 
      
      test_config_15_dummies_grid <- tidyr::crossing(committees = c(1:9, (1:5) * 
          10), neighbors = c(0, 3, 6, 9)) 
      
      test_config_15_dummies_tune <- 
        tune_grid(test_config_15_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = test_config_15_dummies_grid) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_16_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## Since dot product calculations are used, the predictor variables 
        ## should be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_16_dummies_spec <- 
        svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% 
        set_mode("regression") 
      
      test_config_16_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_16_dummies_recipe) %>% 
        add_model(test_config_16_dummies_spec) 
      
      set.seed(27246)
      test_config_16_dummies_tune <-
        tune_grid(test_config_16_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_16_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## Since dot product calculations are used, the predictor variables 
        ## should be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_16_no_dummies_spec <- 
        svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% 
        set_mode("classification") 
      
      test_config_16_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_16_no_dummies_recipe) %>% 
        add_model(test_config_16_no_dummies_spec) 
      
      set.seed(27246)
      test_config_16_no_dummies_tune <-
        tune_grid(test_config_16_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_17_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        ## Since dot product calculations are used, the predictor variables 
        ## should be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_17_dummies_spec <- 
        svm_rbf(cost = tune(), rbf_sigma = tune()) %>% 
        set_mode("regression") 
      
      test_config_17_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_17_dummies_recipe) %>% 
        add_model(test_config_17_dummies_spec) 
      
      set.seed(27246)
      test_config_17_dummies_tune <-
        tune_grid(test_config_17_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_17_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## Since dot product calculations are used, the predictor variables 
        ## should be on the same scale. Before centering and scaling the numeric 
        ## predictors, any predictors with a single unique value are filtered 
        ## out. 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_17_no_dummies_spec <- 
        svm_rbf(cost = tune(), rbf_sigma = tune()) %>% 
        set_mode("classification") 
      
      test_config_17_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_17_no_dummies_recipe) %>% 
        add_model(test_config_17_no_dummies_spec) 
      
      set.seed(27246)
      test_config_17_no_dummies_tune <-
        tune_grid(test_config_17_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_18_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        ## For modeling, it is preferred to encode qualitative data as factors 
        ## (instead of character). 
        step_string2factor(one_of("island")) 
      
      test_config_18_no_dummies_spec <- 
        boost_tree(trees = tune(), min_n = tune()) %>% 
        set_mode("classification") %>% 
        set_engine("C5.0") 
      
      test_config_18_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_18_no_dummies_recipe) %>% 
        add_model(test_config_18_no_dummies_spec) 
      
      set.seed(27246)
      test_config_18_no_dummies_tune <-
        tune_grid(test_config_18_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_19_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_19_dummies_spec <- 
        linear_reg() %>% 
        set_mode("regression") %>% 
        set_engine("glmnet") 
      
      test_config_19_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_19_dummies_recipe) %>% 
        add_model(test_config_19_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_19_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_19_no_dummies_spec <- 
        multinom_reg() %>% 
        set_mode("classification") %>% 
        set_engine("glmnet") 
      
      test_config_19_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_19_no_dummies_recipe) %>% 
        add_model(test_config_19_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_20_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% 
        step_zv(all_predictors()) 
      
      test_config_20_dummies_spec <- 
        boost_tree() %>% 
        set_mode("regression") %>% 
        set_engine("xgboost") 
      
      test_config_20_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_20_dummies_recipe) %>% 
        add_model(test_config_20_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_20_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% 
        step_zv(all_predictors()) 
      
      test_config_20_no_dummies_spec <- 
        boost_tree() %>% 
        set_mode("classification") %>% 
        set_engine("xgboost") 
      
      test_config_20_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_20_no_dummies_recipe) %>% 
        add_model(test_config_20_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_21_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) 
      
      test_config_21_dummies_spec <- 
        rand_forest(trees = 1000) %>% 
        set_mode("regression") %>% 
        set_engine("ranger") 
      
      test_config_21_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_21_dummies_recipe) %>% 
        add_model(test_config_21_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_21_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) 
      
      test_config_21_no_dummies_spec <- 
        rand_forest(trees = 1000) %>% 
        set_mode("classification") %>% 
        set_engine("ranger") 
      
      test_config_21_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_21_no_dummies_recipe) %>% 
        add_model(test_config_21_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_22_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_22_dummies_spec <- 
        nearest_neighbor() %>% 
        set_mode("regression") %>% 
        set_engine("kknn") 
      
      test_config_22_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_22_dummies_recipe) %>% 
        add_model(test_config_22_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_22_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_22_no_dummies_spec <- 
        nearest_neighbor() %>% 
        set_mode("classification") %>% 
        set_engine("kknn") 
      
      test_config_22_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_22_no_dummies_recipe) %>% 
        add_model(test_config_22_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_23_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) 
      
      test_config_23_dummies_spec <- 
        mars() %>% 
        set_mode("regression") %>% 
        set_engine("earth") 
      
      test_config_23_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_23_dummies_recipe) %>% 
        add_model(test_config_23_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_23_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) 
      
      test_config_23_no_dummies_spec <- 
        mars() %>% 
        set_mode("classification") %>% 
        set_engine("earth") 
      
      test_config_23_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_23_no_dummies_recipe) %>% 
        add_model(test_config_23_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      library(rules)
      
      test_config_24_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_zv(all_predictors()) 
      
      test_config_24_dummies_spec <- 
        cubist_rules() %>% 
        set_engine("Cubist") 
      
      test_config_24_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_24_dummies_recipe) %>% 
        add_model(test_config_24_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_25_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_25_dummies_spec <- 
        svm_poly() %>% 
        set_mode("regression") 
      
      test_config_25_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_25_dummies_recipe) %>% 
        add_model(test_config_25_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_25_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_25_no_dummies_spec <- 
        svm_poly() %>% 
        set_mode("classification") 
      
      test_config_25_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_25_no_dummies_recipe) %>% 
        add_model(test_config_25_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_26_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_26_dummies_spec <- 
        svm_rbf() %>% 
        set_mode("regression") 
      
      test_config_26_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_26_dummies_recipe) %>% 
        add_model(test_config_26_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_26_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_26_no_dummies_spec <- 
        svm_rbf() %>% 
        set_mode("classification") 
      
      test_config_26_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_26_no_dummies_recipe) %>% 
        add_model(test_config_26_no_dummies_spec) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_27_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) 
      
      test_config_27_no_dummies_spec <- 
        boost_tree() %>% 
        set_mode("classification") %>% 
        set_engine("C5.0") 
      
      test_config_27_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_27_no_dummies_recipe) %>% 
        add_model(test_config_27_no_dummies_spec) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_28_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_28_dummies_spec <- 
        linear_reg(penalty = tune(), mixture = tune()) %>% 
        set_mode("regression") %>% 
        set_engine("glmnet") 
      
      test_config_28_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_28_dummies_recipe) %>% 
        add_model(test_config_28_dummies_spec) 
      
      test_config_28_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), 
          mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) 
      
      test_config_28_dummies_tune <- 
        tune_grid(test_config_28_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = test_config_28_dummies_grid) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_28_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_28_no_dummies_spec <- 
        multinom_reg(penalty = tune(), mixture = tune()) %>% 
        set_mode("classification") %>% 
        set_engine("glmnet") 
      
      test_config_28_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_28_no_dummies_recipe) %>% 
        add_model(test_config_28_no_dummies_spec) 
      
      test_config_28_no_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, 
          length.out = 20), mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) 
      
      test_config_28_no_dummies_tune <- 
        tune_grid(test_config_28_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = test_config_28_no_dummies_grid) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_29_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% 
        step_zv(all_predictors()) 
      
      test_config_29_dummies_spec <- 
        boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
          loss_reduction = tune(), sample_size = tune()) %>% 
        set_mode("regression") %>% 
        set_engine("xgboost") 
      
      test_config_29_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_29_dummies_recipe) %>% 
        add_model(test_config_29_dummies_spec) 
      
      set.seed(27246)
      test_config_29_dummies_tune <-
        tune_grid(test_config_29_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_29_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% 
        step_zv(all_predictors()) 
      
      test_config_29_no_dummies_spec <- 
        boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), 
          loss_reduction = tune(), sample_size = tune()) %>% 
        set_mode("classification") %>% 
        set_engine("xgboost") 
      
      test_config_29_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_29_no_dummies_recipe) %>% 
        add_model(test_config_29_no_dummies_spec) 
      
      set.seed(27246)
      test_config_29_no_dummies_tune <-
        tune_grid(test_config_29_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_30_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) 
      
      test_config_30_dummies_spec <- 
        rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
        set_mode("regression") %>% 
        set_engine("ranger") 
      
      test_config_30_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_30_dummies_recipe) %>% 
        add_model(test_config_30_dummies_spec) 
      
      set.seed(27246)
      test_config_30_dummies_tune <-
        tune_grid(test_config_30_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_30_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) 
      
      test_config_30_no_dummies_spec <- 
        rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% 
        set_mode("classification") %>% 
        set_engine("ranger") 
      
      test_config_30_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_30_no_dummies_recipe) %>% 
        add_model(test_config_30_no_dummies_spec) 
      
      set.seed(27246)
      test_config_30_no_dummies_tune <-
        tune_grid(test_config_30_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_31_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_31_dummies_spec <- 
        nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
        set_mode("regression") %>% 
        set_engine("kknn") 
      
      test_config_31_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_31_dummies_recipe) %>% 
        add_model(test_config_31_dummies_spec) 
      
      set.seed(27246)
      test_config_31_dummies_tune <-
        tune_grid(test_config_31_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_31_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_31_no_dummies_spec <- 
        nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% 
        set_mode("classification") %>% 
        set_engine("kknn") 
      
      test_config_31_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_31_no_dummies_recipe) %>% 
        add_model(test_config_31_no_dummies_spec) 
      
      set.seed(27246)
      test_config_31_no_dummies_tune <-
        tune_grid(test_config_31_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_32_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) 
      
      test_config_32_dummies_spec <- 
        mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
        set_mode("regression") %>% 
        set_engine("earth") 
      
      test_config_32_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_32_dummies_recipe) %>% 
        add_model(test_config_32_dummies_spec) 
      
      test_config_32_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
      
      test_config_32_dummies_tune <- 
        tune_grid(test_config_32_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = test_config_32_dummies_grid) 
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_32_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_novel(all_nominal_predictors()) %>% 
        step_dummy(all_nominal_predictors()) %>% 
        step_zv(all_predictors()) 
      
      test_config_32_no_dummies_spec <- 
        mars(num_terms = tune(), prod_degree = tune(), prune_method = "none") %>% 
        set_mode("classification") %>% 
        set_engine("earth") 
      
      test_config_32_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_32_no_dummies_recipe) %>% 
        add_model(test_config_32_no_dummies_spec) 
      
      test_config_32_no_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) 
      
      test_config_32_no_dummies_tune <- 
        tune_grid(test_config_32_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = test_config_32_no_dummies_grid) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      library(rules)
      
      test_config_33_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) %>% 
        step_zv(all_predictors()) 
      
      test_config_33_dummies_spec <- 
        cubist_rules(committees = tune(), neighbors = tune()) %>% 
        set_engine("Cubist") 
      
      test_config_33_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_33_dummies_recipe) %>% 
        add_model(test_config_33_dummies_spec) 
      
      test_config_33_dummies_grid <- tidyr::crossing(committees = c(1:9, (1:5) * 
          10), neighbors = c(0, 3, 6, 9)) 
      
      test_config_33_dummies_tune <- 
        tune_grid(test_config_33_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = test_config_33_dummies_grid) 
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_34_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_34_dummies_spec <- 
        svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% 
        set_mode("regression") 
      
      test_config_34_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_34_dummies_recipe) %>% 
        add_model(test_config_34_dummies_spec) 
      
      set.seed(27246)
      test_config_34_dummies_tune <-
        tune_grid(test_config_34_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_34_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_34_no_dummies_spec <- 
        svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% 
        set_mode("classification") 
      
      test_config_34_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_34_no_dummies_recipe) %>% 
        add_model(test_config_34_no_dummies_spec) 
      
      set.seed(27246)
      test_config_34_no_dummies_tune <-
        tune_grid(test_config_34_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      dummy_template(model, prefix, verbose, tune)
    Output
      test_config_35_dummies_recipe <- 
        recipe(formula = body_mass_g ~ ., data = penguins) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_35_dummies_spec <- 
        svm_rbf(cost = tune(), rbf_sigma = tune()) %>% 
        set_mode("regression") 
      
      test_config_35_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_35_dummies_recipe) %>% 
        add_model(test_config_35_dummies_spec) 
      
      set.seed(27246)
      test_config_35_dummies_tune <-
        tune_grid(test_config_35_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_35_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_zv(all_predictors()) %>% 
        step_normalize(all_numeric_predictors()) 
      
      test_config_35_no_dummies_spec <- 
        svm_rbf(cost = tune(), rbf_sigma = tune()) %>% 
        set_mode("classification") 
      
      test_config_35_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_35_no_dummies_recipe) %>% 
        add_model(test_config_35_no_dummies_spec) 
      
      set.seed(27246)
      test_config_35_no_dummies_tune <-
        tune_grid(test_config_35_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

---

    Code
      no_dummy_template(model, prefix, verbose, tune)
    Output
      test_config_36_no_dummies_recipe <- 
        recipe(formula = species ~ ., data = penguins) %>% 
        step_string2factor(one_of("island")) 
      
      test_config_36_no_dummies_spec <- 
        boost_tree(trees = tune(), min_n = tune()) %>% 
        set_mode("classification") %>% 
        set_engine("C5.0") 
      
      test_config_36_no_dummies_workflow <- 
        workflow() %>% 
        add_recipe(test_config_36_no_dummies_recipe) %>% 
        add_model(test_config_36_no_dummies_spec) 
      
      set.seed(27246)
      test_config_36_no_dummies_tune <-
        tune_grid(test_config_36_no_dummies_workflow, resamples = stop("add your rsample object"), 
          grid = stop("add number of candidate points"))
      

