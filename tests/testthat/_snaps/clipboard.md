# all model templates with clipboard

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_1_dummies_recipe <- "                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "  
       [4] "  ## (instead of character). "                                              
       [5] "  step_string2factor(one_of(\"island\")) %>% "                              
       [6] "  step_novel(all_nominal_predictors()) %>% "                                
       [7] "  ## This model requires the predictors to be numeric. The most common "    
       [8] "  ## method to convert qualitative predictors to numeric is to create "     
       [9] "  ## binary indicator variables (aka dummy variables) from these "          
      [10] "  ## predictors. "                                                          
      [11] "  step_dummy(all_nominal_predictors()) %>% "                                
      [12] "  ## Regularization methods sum up functions of the model slope "           
      [13] "  ## coefficients. Because of this, the predictor variables should be on "  
      [14] "  ## the same scale. Before centering and scaling the numeric predictors, " 
      [15] "  ## any predictors with a single unique value are filtered out. "          
      [16] "  step_zv(all_predictors()) %>% "                                           
      [17] "  step_normalize(all_numeric_predictors()) "                                
      [18] ""                                                                           
      [19] "test_config_1_dummies_spec <- "                                             
      [20] "  linear_reg() %>% "                                                        
      [21] "  set_mode(\"regression\") %>% "                                            
      [22] "  set_engine(\"glmnet\") "                                                  
      [23] ""                                                                           
      [24] "test_config_1_dummies_workflow <- "                                         
      [25] "  workflow() %>% "                                                          
      [26] "  add_recipe(test_config_1_dummies_recipe) %>% "                            
      [27] "  add_model(test_config_1_dummies_spec) "                                   

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_1_no_dummies_recipe <- "                                       
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "   
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors " 
       [4] "  ## (instead of character). "                                             
       [5] "  step_string2factor(one_of(\"island\")) %>% "                             
       [6] "  step_novel(all_nominal_predictors()) %>% "                               
       [7] "  ## This model requires the predictors to be numeric. The most common "   
       [8] "  ## method to convert qualitative predictors to numeric is to create "    
       [9] "  ## binary indicator variables (aka dummy variables) from these "         
      [10] "  ## predictors. "                                                         
      [11] "  step_dummy(all_nominal_predictors()) %>% "                               
      [12] "  ## Regularization methods sum up functions of the model slope "          
      [13] "  ## coefficients. Because of this, the predictor variables should be on " 
      [14] "  ## the same scale. Before centering and scaling the numeric predictors, "
      [15] "  ## any predictors with a single unique value are filtered out. "         
      [16] "  step_zv(all_predictors()) %>% "                                          
      [17] "  step_normalize(all_numeric_predictors()) "                               
      [18] ""                                                                          
      [19] "test_config_1_no_dummies_spec <- "                                         
      [20] "  multinom_reg() %>% "                                                     
      [21] "  set_mode(\"classification\") %>% "                                       
      [22] "  set_engine(\"glmnet\") "                                                 
      [23] ""                                                                          
      [24] "test_config_1_no_dummies_workflow <- "                                     
      [25] "  workflow() %>% "                                                         
      [26] "  add_recipe(test_config_1_no_dummies_recipe) %>% "                        
      [27] "  add_model(test_config_1_no_dummies_spec) "                               

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_2_dummies_recipe <- "                                            
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% " 
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "   
       [4] "  ## (instead of character). "                                               
       [5] "  step_string2factor(one_of(\"island\")) %>% "                               
       [6] "  step_novel(all_nominal_predictors()) %>% "                                 
       [7] "  ## This model requires the predictors to be numeric. The most common "     
       [8] "  ## method to convert qualitative predictors to numeric is to create "      
       [9] "  ## binary indicator variables (aka dummy variables) from these "           
      [10] "  ## predictors. However, for this model, binary indicator variables can be "
      [11] "  ## made for each of the levels of the factors (known as 'one-hot "         
      [12] "  ## encoding'). "                                                           
      [13] "  step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% "                 
      [14] "  step_zv(all_predictors()) "                                                
      [15] ""                                                                            
      [16] "test_config_2_dummies_spec <- "                                              
      [17] "  boost_tree() %>% "                                                         
      [18] "  set_mode(\"regression\") %>% "                                             
      [19] "  set_engine(\"xgboost\") "                                                  
      [20] ""                                                                            
      [21] "test_config_2_dummies_workflow <- "                                          
      [22] "  workflow() %>% "                                                           
      [23] "  add_recipe(test_config_2_dummies_recipe) %>% "                             
      [24] "  add_model(test_config_2_dummies_spec) "                                    

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_2_no_dummies_recipe <- "                                         
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "     
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "   
       [4] "  ## (instead of character). "                                               
       [5] "  step_string2factor(one_of(\"island\")) %>% "                               
       [6] "  step_novel(all_nominal_predictors()) %>% "                                 
       [7] "  ## This model requires the predictors to be numeric. The most common "     
       [8] "  ## method to convert qualitative predictors to numeric is to create "      
       [9] "  ## binary indicator variables (aka dummy variables) from these "           
      [10] "  ## predictors. However, for this model, binary indicator variables can be "
      [11] "  ## made for each of the levels of the factors (known as 'one-hot "         
      [12] "  ## encoding'). "                                                           
      [13] "  step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% "                 
      [14] "  step_zv(all_predictors()) "                                                
      [15] ""                                                                            
      [16] "test_config_2_no_dummies_spec <- "                                           
      [17] "  boost_tree() %>% "                                                         
      [18] "  set_mode(\"classification\") %>% "                                         
      [19] "  set_engine(\"xgboost\") "                                                  
      [20] ""                                                                            
      [21] "test_config_2_no_dummies_workflow <- "                                       
      [22] "  workflow() %>% "                                                           
      [23] "  add_recipe(test_config_2_no_dummies_recipe) %>% "                          
      [24] "  add_model(test_config_2_no_dummies_spec) "                                 

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_3_dummies_recipe <- "                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "  
       [4] "  ## (instead of character). "                                              
       [5] "  step_string2factor(one_of(\"island\")) "                                  
       [6] ""                                                                           
       [7] "test_config_3_dummies_spec <- "                                             
       [8] "  rand_forest(trees = 1000) %>% "                                           
       [9] "  set_mode(\"regression\") %>% "                                            
      [10] "  set_engine(\"ranger\") "                                                  
      [11] ""                                                                           
      [12] "test_config_3_dummies_workflow <- "                                         
      [13] "  workflow() %>% "                                                          
      [14] "  add_recipe(test_config_3_dummies_recipe) %>% "                            
      [15] "  add_model(test_config_3_dummies_spec) "                                   

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_3_no_dummies_recipe <- "                                      
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "  
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "
       [4] "  ## (instead of character). "                                            
       [5] "  step_string2factor(one_of(\"island\")) "                                
       [6] ""                                                                         
       [7] "test_config_3_no_dummies_spec <- "                                        
       [8] "  rand_forest(trees = 1000) %>% "                                         
       [9] "  set_mode(\"classification\") %>% "                                      
      [10] "  set_engine(\"ranger\") "                                                
      [11] ""                                                                         
      [12] "test_config_3_no_dummies_workflow <- "                                    
      [13] "  workflow() %>% "                                                        
      [14] "  add_recipe(test_config_3_no_dummies_recipe) %>% "                       
      [15] "  add_model(test_config_3_no_dummies_spec) "                              

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_4_dummies_recipe <- "                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "  
       [4] "  ## (instead of character). "                                              
       [5] "  step_string2factor(one_of(\"island\")) %>% "                              
       [6] "  step_novel(all_nominal_predictors()) %>% "                                
       [7] "  ## This model requires the predictors to be numeric. The most common "    
       [8] "  ## method to convert qualitative predictors to numeric is to create "     
       [9] "  ## binary indicator variables (aka dummy variables) from these "          
      [10] "  ## predictors. "                                                          
      [11] "  step_dummy(all_nominal_predictors()) %>% "                                
      [12] "  ## Since distance calculations are used, the predictor variables should " 
      [13] "  ## be on the same scale. Before centering and scaling the numeric "       
      [14] "  ## predictors, any predictors with a single unique value are filtered "   
      [15] "  ## out. "                                                                 
      [16] "  step_zv(all_predictors()) %>% "                                           
      [17] "  step_normalize(all_numeric_predictors()) "                                
      [18] ""                                                                           
      [19] "test_config_4_dummies_spec <- "                                             
      [20] "  nearest_neighbor() %>% "                                                  
      [21] "  set_mode(\"regression\") %>% "                                            
      [22] "  set_engine(\"kknn\") "                                                    
      [23] ""                                                                           
      [24] "test_config_4_dummies_workflow <- "                                         
      [25] "  workflow() %>% "                                                          
      [26] "  add_recipe(test_config_4_dummies_recipe) %>% "                            
      [27] "  add_model(test_config_4_dummies_spec) "                                   

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_4_no_dummies_recipe <- "                                       
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "   
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors " 
       [4] "  ## (instead of character). "                                             
       [5] "  step_string2factor(one_of(\"island\")) %>% "                             
       [6] "  step_novel(all_nominal_predictors()) %>% "                               
       [7] "  ## This model requires the predictors to be numeric. The most common "   
       [8] "  ## method to convert qualitative predictors to numeric is to create "    
       [9] "  ## binary indicator variables (aka dummy variables) from these "         
      [10] "  ## predictors. "                                                         
      [11] "  step_dummy(all_nominal_predictors()) %>% "                               
      [12] "  ## Since distance calculations are used, the predictor variables should "
      [13] "  ## be on the same scale. Before centering and scaling the numeric "      
      [14] "  ## predictors, any predictors with a single unique value are filtered "  
      [15] "  ## out. "                                                                
      [16] "  step_zv(all_predictors()) %>% "                                          
      [17] "  step_normalize(all_numeric_predictors()) "                               
      [18] ""                                                                          
      [19] "test_config_4_no_dummies_spec <- "                                         
      [20] "  nearest_neighbor() %>% "                                                 
      [21] "  set_mode(\"classification\") %>% "                                       
      [22] "  set_engine(\"kknn\") "                                                   
      [23] ""                                                                          
      [24] "test_config_4_no_dummies_workflow <- "                                     
      [25] "  workflow() %>% "                                                         
      [26] "  add_recipe(test_config_4_no_dummies_recipe) %>% "                        
      [27] "  add_model(test_config_4_no_dummies_spec) "                               

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_5_dummies_recipe <- "                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "  
       [4] "  ## (instead of character). "                                              
       [5] "  step_string2factor(one_of(\"island\")) %>% "                              
       [6] "  step_novel(all_nominal_predictors()) %>% "                                
       [7] "  ## This model requires the predictors to be numeric. The most common "    
       [8] "  ## method to convert qualitative predictors to numeric is to create "     
       [9] "  ## binary indicator variables (aka dummy variables) from these "          
      [10] "  ## predictors. "                                                          
      [11] "  step_dummy(all_nominal_predictors()) %>% "                                
      [12] "  step_zv(all_predictors()) "                                               
      [13] ""                                                                           
      [14] "test_config_5_dummies_spec <- "                                             
      [15] "  mars() %>% "                                                              
      [16] "  set_mode(\"regression\") %>% "                                            
      [17] "  set_engine(\"earth\") "                                                   
      [18] ""                                                                           
      [19] "test_config_5_dummies_workflow <- "                                         
      [20] "  workflow() %>% "                                                          
      [21] "  add_recipe(test_config_5_dummies_recipe) %>% "                            
      [22] "  add_model(test_config_5_dummies_spec) "                                   

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_5_no_dummies_recipe <- "                                      
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "  
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "
       [4] "  ## (instead of character). "                                            
       [5] "  step_string2factor(one_of(\"island\")) %>% "                            
       [6] "  step_novel(all_nominal_predictors()) %>% "                              
       [7] "  ## This model requires the predictors to be numeric. The most common "  
       [8] "  ## method to convert qualitative predictors to numeric is to create "   
       [9] "  ## binary indicator variables (aka dummy variables) from these "        
      [10] "  ## predictors. "                                                        
      [11] "  step_dummy(all_nominal_predictors()) %>% "                              
      [12] "  step_zv(all_predictors()) "                                             
      [13] ""                                                                         
      [14] "test_config_5_no_dummies_spec <- "                                        
      [15] "  mars() %>% "                                                            
      [16] "  set_mode(\"classification\") %>% "                                      
      [17] "  set_engine(\"earth\") "                                                 
      [18] ""                                                                         
      [19] "test_config_5_no_dummies_workflow <- "                                    
      [20] "  workflow() %>% "                                                        
      [21] "  add_recipe(test_config_5_no_dummies_recipe) %>% "                       
      [22] "  add_model(test_config_5_no_dummies_spec) "                              

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                                             
       [2] ""                                                                           
       [3] "test_config_6_dummies_recipe <- "                                           
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [5] "  ## For modeling, it is preferred to encode qualitative data as factors "  
       [6] "  ## (instead of character). "                                              
       [7] "  step_string2factor(one_of(\"island\")) %>% "                              
       [8] "  step_zv(all_predictors()) "                                               
       [9] ""                                                                           
      [10] "test_config_6_dummies_spec <- "                                             
      [11] "  cubist_rules() %>% "                                                      
      [12] "  set_engine(\"Cubist\") "                                                  
      [13] ""                                                                           
      [14] "test_config_6_dummies_workflow <- "                                         
      [15] "  workflow() %>% "                                                          
      [16] "  add_recipe(test_config_6_dummies_recipe) %>% "                            
      [17] "  add_model(test_config_6_dummies_spec) "                                   

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_7_dummies_recipe <- "                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  ## Since dot product calculations are used, the predictor variables "     
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "
       [5] "  ## predictors, any predictors with a single unique value are filtered "   
       [6] "  ## out. "                                                                 
       [7] "  step_zv(all_predictors()) %>% "                                           
       [8] "  step_normalize(all_numeric_predictors()) "                                
       [9] ""                                                                           
      [10] "test_config_7_dummies_spec <- "                                             
      [11] "  svm_poly() %>% "                                                          
      [12] "  set_mode(\"regression\") "                                                
      [13] ""                                                                           
      [14] "test_config_7_dummies_workflow <- "                                         
      [15] "  workflow() %>% "                                                          
      [16] "  add_recipe(test_config_7_dummies_recipe) %>% "                            
      [17] "  add_model(test_config_7_dummies_spec) "                                   

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_7_no_dummies_recipe <- "                                        
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "    
       [3] "  ## Since dot product calculations are used, the predictor variables "     
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "
       [5] "  ## predictors, any predictors with a single unique value are filtered "   
       [6] "  ## out. "                                                                 
       [7] "  step_zv(all_predictors()) %>% "                                           
       [8] "  step_normalize(all_numeric_predictors()) "                                
       [9] ""                                                                           
      [10] "test_config_7_no_dummies_spec <- "                                          
      [11] "  svm_poly() %>% "                                                          
      [12] "  set_mode(\"classification\") "                                            
      [13] ""                                                                           
      [14] "test_config_7_no_dummies_workflow <- "                                      
      [15] "  workflow() %>% "                                                          
      [16] "  add_recipe(test_config_7_no_dummies_recipe) %>% "                         
      [17] "  add_model(test_config_7_no_dummies_spec) "                                

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_8_dummies_recipe <- "                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  ## Since dot product calculations are used, the predictor variables "     
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "
       [5] "  ## predictors, any predictors with a single unique value are filtered "   
       [6] "  ## out. "                                                                 
       [7] "  step_zv(all_predictors()) %>% "                                           
       [8] "  step_normalize(all_numeric_predictors()) "                                
       [9] ""                                                                           
      [10] "test_config_8_dummies_spec <- "                                             
      [11] "  svm_rbf() %>% "                                                           
      [12] "  set_mode(\"regression\") "                                                
      [13] ""                                                                           
      [14] "test_config_8_dummies_workflow <- "                                         
      [15] "  workflow() %>% "                                                          
      [16] "  add_recipe(test_config_8_dummies_recipe) %>% "                            
      [17] "  add_model(test_config_8_dummies_spec) "                                   

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_8_no_dummies_recipe <- "                                        
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "    
       [3] "  ## Since dot product calculations are used, the predictor variables "     
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "
       [5] "  ## predictors, any predictors with a single unique value are filtered "   
       [6] "  ## out. "                                                                 
       [7] "  step_zv(all_predictors()) %>% "                                           
       [8] "  step_normalize(all_numeric_predictors()) "                                
       [9] ""                                                                           
      [10] "test_config_8_no_dummies_spec <- "                                          
      [11] "  svm_rbf() %>% "                                                           
      [12] "  set_mode(\"classification\") "                                            
      [13] ""                                                                           
      [14] "test_config_8_no_dummies_workflow <- "                                      
      [15] "  workflow() %>% "                                                          
      [16] "  add_recipe(test_config_8_no_dummies_recipe) %>% "                         
      [17] "  add_model(test_config_8_no_dummies_spec) "                                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_9_no_dummies_recipe <- "                                      
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "  
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "
       [4] "  ## (instead of character). "                                            
       [5] "  step_string2factor(one_of(\"island\")) "                                
       [6] ""                                                                         
       [7] "test_config_9_no_dummies_spec <- "                                        
       [8] "  boost_tree() %>% "                                                      
       [9] "  set_mode(\"classification\") %>% "                                      
      [10] "  set_engine(\"C5.0\") "                                                  
      [11] ""                                                                         
      [12] "test_config_9_no_dummies_workflow <- "                                    
      [13] "  workflow() %>% "                                                        
      [14] "  add_recipe(test_config_9_no_dummies_recipe) %>% "                       
      [15] "  add_model(test_config_9_no_dummies_spec) "                              

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_10_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "                   
       [4] "  ## (instead of character). "                                                               
       [5] "  step_string2factor(one_of(\"island\")) %>% "                                               
       [6] "  step_novel(all_nominal_predictors()) %>% "                                                 
       [7] "  ## This model requires the predictors to be numeric. The most common "                     
       [8] "  ## method to convert qualitative predictors to numeric is to create "                      
       [9] "  ## binary indicator variables (aka dummy variables) from these "                           
      [10] "  ## predictors. "                                                                           
      [11] "  step_dummy(all_nominal_predictors()) %>% "                                                 
      [12] "  ## Regularization methods sum up functions of the model slope "                            
      [13] "  ## coefficients. Because of this, the predictor variables should be on "                   
      [14] "  ## the same scale. Before centering and scaling the numeric predictors, "                  
      [15] "  ## any predictors with a single unique value are filtered out. "                           
      [16] "  step_zv(all_predictors()) %>% "                                                            
      [17] "  step_normalize(all_numeric_predictors()) "                                                 
      [18] ""                                                                                            
      [19] "test_config_10_dummies_spec <- "                                                             
      [20] "  linear_reg(penalty = tune(), mixture = tune()) %>% "                                       
      [21] "  set_mode(\"regression\") %>% "                                                             
      [22] "  set_engine(\"glmnet\") "                                                                   
      [23] ""                                                                                            
      [24] "test_config_10_dummies_workflow <- "                                                         
      [25] "  workflow() %>% "                                                                           
      [26] "  add_recipe(test_config_10_dummies_recipe) %>% "                                            
      [27] "  add_model(test_config_10_dummies_spec) "                                                   
      [28] ""                                                                                            
      [29] "test_config_10_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), "  
      [30] "    mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) "                                              
      [31] ""                                                                                            
      [32] "test_config_10_dummies_tune <- "                                                             
      [33] "  tune_grid(test_config_10_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [34] "    grid = test_config_10_dummies_grid) "                                                    

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_10_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "                      
       [4] "  ## (instead of character). "                                                                  
       [5] "  step_string2factor(one_of(\"island\")) %>% "                                                  
       [6] "  step_novel(all_nominal_predictors()) %>% "                                                    
       [7] "  ## This model requires the predictors to be numeric. The most common "                        
       [8] "  ## method to convert qualitative predictors to numeric is to create "                         
       [9] "  ## binary indicator variables (aka dummy variables) from these "                              
      [10] "  ## predictors. "                                                                              
      [11] "  step_dummy(all_nominal_predictors()) %>% "                                                    
      [12] "  ## Regularization methods sum up functions of the model slope "                               
      [13] "  ## coefficients. Because of this, the predictor variables should be on "                      
      [14] "  ## the same scale. Before centering and scaling the numeric predictors, "                     
      [15] "  ## any predictors with a single unique value are filtered out. "                              
      [16] "  step_zv(all_predictors()) %>% "                                                               
      [17] "  step_normalize(all_numeric_predictors()) "                                                    
      [18] ""                                                                                               
      [19] "test_config_10_no_dummies_spec <- "                                                             
      [20] "  multinom_reg(penalty = tune(), mixture = tune()) %>% "                                        
      [21] "  set_mode(\"classification\") %>% "                                                            
      [22] "  set_engine(\"glmnet\") "                                                                      
      [23] ""                                                                                               
      [24] "test_config_10_no_dummies_workflow <- "                                                         
      [25] "  workflow() %>% "                                                                              
      [26] "  add_recipe(test_config_10_no_dummies_recipe) %>% "                                            
      [27] "  add_model(test_config_10_no_dummies_spec) "                                                   
      [28] ""                                                                                               
      [29] "test_config_10_no_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, "                    
      [30] "    length.out = 20), mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) "                               
      [31] ""                                                                                               
      [32] "test_config_10_no_dummies_tune <- "                                                             
      [33] "  tune_grid(test_config_10_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [34] "    grid = test_config_10_no_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_11_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "                   
       [4] "  ## (instead of character). "                                                               
       [5] "  step_string2factor(one_of(\"island\")) %>% "                                               
       [6] "  step_novel(all_nominal_predictors()) %>% "                                                 
       [7] "  ## This model requires the predictors to be numeric. The most common "                     
       [8] "  ## method to convert qualitative predictors to numeric is to create "                      
       [9] "  ## binary indicator variables (aka dummy variables) from these "                           
      [10] "  ## predictors. However, for this model, binary indicator variables can be "                
      [11] "  ## made for each of the levels of the factors (known as 'one-hot "                         
      [12] "  ## encoding'). "                                                                           
      [13] "  step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% "                                 
      [14] "  step_zv(all_predictors()) "                                                                
      [15] ""                                                                                            
      [16] "test_config_11_dummies_spec <- "                                                             
      [17] "  boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), "     
      [18] "    loss_reduction = tune(), sample_size = tune()) %>% "                                     
      [19] "  set_mode(\"regression\") %>% "                                                             
      [20] "  set_engine(\"xgboost\") "                                                                  
      [21] ""                                                                                            
      [22] "test_config_11_dummies_workflow <- "                                                         
      [23] "  workflow() %>% "                                                                           
      [24] "  add_recipe(test_config_11_dummies_recipe) %>% "                                            
      [25] "  add_model(test_config_11_dummies_spec) "                                                   
      [26] ""                                                                                            
      [27] "set.seed(27246)"                                                                             
      [28] "test_config_11_dummies_tune <-"                                                              
      [29] "  tune_grid(test_config_11_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [30] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_11_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "                      
       [4] "  ## (instead of character). "                                                                  
       [5] "  step_string2factor(one_of(\"island\")) %>% "                                                  
       [6] "  step_novel(all_nominal_predictors()) %>% "                                                    
       [7] "  ## This model requires the predictors to be numeric. The most common "                        
       [8] "  ## method to convert qualitative predictors to numeric is to create "                         
       [9] "  ## binary indicator variables (aka dummy variables) from these "                              
      [10] "  ## predictors. However, for this model, binary indicator variables can be "                   
      [11] "  ## made for each of the levels of the factors (known as 'one-hot "                            
      [12] "  ## encoding'). "                                                                              
      [13] "  step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% "                                    
      [14] "  step_zv(all_predictors()) "                                                                   
      [15] ""                                                                                               
      [16] "test_config_11_no_dummies_spec <- "                                                             
      [17] "  boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), "        
      [18] "    loss_reduction = tune(), sample_size = tune()) %>% "                                        
      [19] "  set_mode(\"classification\") %>% "                                                            
      [20] "  set_engine(\"xgboost\") "                                                                     
      [21] ""                                                                                               
      [22] "test_config_11_no_dummies_workflow <- "                                                         
      [23] "  workflow() %>% "                                                                              
      [24] "  add_recipe(test_config_11_no_dummies_recipe) %>% "                                            
      [25] "  add_model(test_config_11_no_dummies_spec) "                                                   
      [26] ""                                                                                               
      [27] "set.seed(27246)"                                                                                
      [28] "test_config_11_no_dummies_tune <-"                                                              
      [29] "  tune_grid(test_config_11_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [30] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_12_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "                   
       [4] "  ## (instead of character). "                                                               
       [5] "  step_string2factor(one_of(\"island\")) "                                                   
       [6] ""                                                                                            
       [7] "test_config_12_dummies_spec <- "                                                             
       [8] "  rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% "                             
       [9] "  set_mode(\"regression\") %>% "                                                             
      [10] "  set_engine(\"ranger\") "                                                                   
      [11] ""                                                                                            
      [12] "test_config_12_dummies_workflow <- "                                                         
      [13] "  workflow() %>% "                                                                           
      [14] "  add_recipe(test_config_12_dummies_recipe) %>% "                                            
      [15] "  add_model(test_config_12_dummies_spec) "                                                   
      [16] ""                                                                                            
      [17] "set.seed(27246)"                                                                             
      [18] "test_config_12_dummies_tune <-"                                                              
      [19] "  tune_grid(test_config_12_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [20] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_12_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "                      
       [4] "  ## (instead of character). "                                                                  
       [5] "  step_string2factor(one_of(\"island\")) "                                                      
       [6] ""                                                                                               
       [7] "test_config_12_no_dummies_spec <- "                                                             
       [8] "  rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% "                                
       [9] "  set_mode(\"classification\") %>% "                                                            
      [10] "  set_engine(\"ranger\") "                                                                      
      [11] ""                                                                                               
      [12] "test_config_12_no_dummies_workflow <- "                                                         
      [13] "  workflow() %>% "                                                                              
      [14] "  add_recipe(test_config_12_no_dummies_recipe) %>% "                                            
      [15] "  add_model(test_config_12_no_dummies_spec) "                                                   
      [16] ""                                                                                               
      [17] "set.seed(27246)"                                                                                
      [18] "test_config_12_no_dummies_tune <-"                                                              
      [19] "  tune_grid(test_config_12_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [20] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_13_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "                   
       [4] "  ## (instead of character). "                                                               
       [5] "  step_string2factor(one_of(\"island\")) %>% "                                               
       [6] "  step_novel(all_nominal_predictors()) %>% "                                                 
       [7] "  ## This model requires the predictors to be numeric. The most common "                     
       [8] "  ## method to convert qualitative predictors to numeric is to create "                      
       [9] "  ## binary indicator variables (aka dummy variables) from these "                           
      [10] "  ## predictors. "                                                                           
      [11] "  step_dummy(all_nominal_predictors()) %>% "                                                 
      [12] "  ## Since distance calculations are used, the predictor variables should "                  
      [13] "  ## be on the same scale. Before centering and scaling the numeric "                        
      [14] "  ## predictors, any predictors with a single unique value are filtered "                    
      [15] "  ## out. "                                                                                  
      [16] "  step_zv(all_predictors()) %>% "                                                            
      [17] "  step_normalize(all_numeric_predictors()) "                                                 
      [18] ""                                                                                            
      [19] "test_config_13_dummies_spec <- "                                                             
      [20] "  nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% "                           
      [21] "  set_mode(\"regression\") %>% "                                                             
      [22] "  set_engine(\"kknn\") "                                                                     
      [23] ""                                                                                            
      [24] "test_config_13_dummies_workflow <- "                                                         
      [25] "  workflow() %>% "                                                                           
      [26] "  add_recipe(test_config_13_dummies_recipe) %>% "                                            
      [27] "  add_model(test_config_13_dummies_spec) "                                                   
      [28] ""                                                                                            
      [29] "set.seed(27246)"                                                                             
      [30] "test_config_13_dummies_tune <-"                                                              
      [31] "  tune_grid(test_config_13_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [32] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_13_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "                      
       [4] "  ## (instead of character). "                                                                  
       [5] "  step_string2factor(one_of(\"island\")) %>% "                                                  
       [6] "  step_novel(all_nominal_predictors()) %>% "                                                    
       [7] "  ## This model requires the predictors to be numeric. The most common "                        
       [8] "  ## method to convert qualitative predictors to numeric is to create "                         
       [9] "  ## binary indicator variables (aka dummy variables) from these "                              
      [10] "  ## predictors. "                                                                              
      [11] "  step_dummy(all_nominal_predictors()) %>% "                                                    
      [12] "  ## Since distance calculations are used, the predictor variables should "                     
      [13] "  ## be on the same scale. Before centering and scaling the numeric "                           
      [14] "  ## predictors, any predictors with a single unique value are filtered "                       
      [15] "  ## out. "                                                                                     
      [16] "  step_zv(all_predictors()) %>% "                                                               
      [17] "  step_normalize(all_numeric_predictors()) "                                                    
      [18] ""                                                                                               
      [19] "test_config_13_no_dummies_spec <- "                                                             
      [20] "  nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% "                              
      [21] "  set_mode(\"classification\") %>% "                                                            
      [22] "  set_engine(\"kknn\") "                                                                        
      [23] ""                                                                                               
      [24] "test_config_13_no_dummies_workflow <- "                                                         
      [25] "  workflow() %>% "                                                                              
      [26] "  add_recipe(test_config_13_no_dummies_recipe) %>% "                                            
      [27] "  add_model(test_config_13_no_dummies_spec) "                                                   
      [28] ""                                                                                               
      [29] "set.seed(27246)"                                                                                
      [30] "test_config_13_no_dummies_tune <-"                                                              
      [31] "  tune_grid(test_config_13_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [32] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Output
      ## MARS models can make predictions on many _sub_models_, meaning that we
      ## can evaluate many values of `num_terms` without much computational
      ## cost. A regular grid is used to exploit this property. The first term
      ## is only the intercept, so the grid is a sequence of even numbered
      ## values.
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_14_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "                   
       [4] "  ## (instead of character). "                                                               
       [5] "  step_string2factor(one_of(\"island\")) %>% "                                               
       [6] "  step_novel(all_nominal_predictors()) %>% "                                                 
       [7] "  ## This model requires the predictors to be numeric. The most common "                     
       [8] "  ## method to convert qualitative predictors to numeric is to create "                      
       [9] "  ## binary indicator variables (aka dummy variables) from these "                           
      [10] "  ## predictors. "                                                                           
      [11] "  step_dummy(all_nominal_predictors()) %>% "                                                 
      [12] "  step_zv(all_predictors()) "                                                                
      [13] ""                                                                                            
      [14] "test_config_14_dummies_spec <- "                                                             
      [15] "  mars(num_terms = tune(), prod_degree = tune(), prune_method = \"none\") %>% "              
      [16] "  set_mode(\"regression\") %>% "                                                             
      [17] "  set_engine(\"earth\") "                                                                    
      [18] ""                                                                                            
      [19] "test_config_14_dummies_workflow <- "                                                         
      [20] "  workflow() %>% "                                                                           
      [21] "  add_recipe(test_config_14_dummies_recipe) %>% "                                            
      [22] "  add_model(test_config_14_dummies_spec) "                                                   
      [23] ""                                                                                            
      [24] "test_config_14_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) "   
      [25] ""                                                                                            
      [26] "test_config_14_dummies_tune <- "                                                             
      [27] "  tune_grid(test_config_14_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [28] "    grid = test_config_14_dummies_grid) "                                                    

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Output
      ## MARS models can make predictions on many _sub_models_, meaning that we
      ## can evaluate many values of `num_terms` without much computational
      ## cost. A regular grid is used to exploit this property. The first term
      ## is only the intercept, so the grid is a sequence of even numbered
      ## values.
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_14_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "                      
       [4] "  ## (instead of character). "                                                                  
       [5] "  step_string2factor(one_of(\"island\")) %>% "                                                  
       [6] "  step_novel(all_nominal_predictors()) %>% "                                                    
       [7] "  ## This model requires the predictors to be numeric. The most common "                        
       [8] "  ## method to convert qualitative predictors to numeric is to create "                         
       [9] "  ## binary indicator variables (aka dummy variables) from these "                              
      [10] "  ## predictors. "                                                                              
      [11] "  step_dummy(all_nominal_predictors()) %>% "                                                    
      [12] "  step_zv(all_predictors()) "                                                                   
      [13] ""                                                                                               
      [14] "test_config_14_no_dummies_spec <- "                                                             
      [15] "  mars(num_terms = tune(), prod_degree = tune(), prune_method = \"none\") %>% "                 
      [16] "  set_mode(\"classification\") %>% "                                                            
      [17] "  set_engine(\"earth\") "                                                                       
      [18] ""                                                                                               
      [19] "test_config_14_no_dummies_workflow <- "                                                         
      [20] "  workflow() %>% "                                                                              
      [21] "  add_recipe(test_config_14_no_dummies_recipe) %>% "                                            
      [22] "  add_model(test_config_14_no_dummies_spec) "                                                   
      [23] ""                                                                                               
      [24] "test_config_14_no_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) "   
      [25] ""                                                                                               
      [26] "test_config_14_no_dummies_tune <- "                                                             
      [27] "  tune_grid(test_config_14_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [28] "    grid = test_config_14_no_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                                                              
       [2] ""                                                                                            
       [3] "test_config_15_dummies_recipe <- "                                                           
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [5] "  ## For modeling, it is preferred to encode qualitative data as factors "                   
       [6] "  ## (instead of character). "                                                               
       [7] "  step_string2factor(one_of(\"island\")) %>% "                                               
       [8] "  step_zv(all_predictors()) "                                                                
       [9] ""                                                                                            
      [10] "test_config_15_dummies_spec <- "                                                             
      [11] "  cubist_rules(committees = tune(), neighbors = tune()) %>% "                                
      [12] "  set_engine(\"Cubist\") "                                                                   
      [13] ""                                                                                            
      [14] "test_config_15_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                           
      [16] "  add_recipe(test_config_15_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_15_dummies_spec) "                                                   
      [18] ""                                                                                            
      [19] "test_config_15_dummies_grid <- tidyr::crossing(committees = c(1:9, (1:5) * "                 
      [20] "    10), neighbors = c(0, 3, 6, 9)) "                                                        
      [21] ""                                                                                            
      [22] "test_config_15_dummies_tune <- "                                                             
      [23] "  tune_grid(test_config_15_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [24] "    grid = test_config_15_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_16_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  ## Since dot product calculations are used, the predictor variables "                      
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "                 
       [5] "  ## predictors, any predictors with a single unique value are filtered "                    
       [6] "  ## out. "                                                                                  
       [7] "  step_zv(all_predictors()) %>% "                                                            
       [8] "  step_normalize(all_numeric_predictors()) "                                                 
       [9] ""                                                                                            
      [10] "test_config_16_dummies_spec <- "                                                             
      [11] "  svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% "                      
      [12] "  set_mode(\"regression\") "                                                                 
      [13] ""                                                                                            
      [14] "test_config_16_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                           
      [16] "  add_recipe(test_config_16_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_16_dummies_spec) "                                                   
      [18] ""                                                                                            
      [19] "set.seed(27246)"                                                                             
      [20] "test_config_16_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_16_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_16_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  ## Since dot product calculations are used, the predictor variables "                         
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "                    
       [5] "  ## predictors, any predictors with a single unique value are filtered "                       
       [6] "  ## out. "                                                                                     
       [7] "  step_zv(all_predictors()) %>% "                                                               
       [8] "  step_normalize(all_numeric_predictors()) "                                                    
       [9] ""                                                                                               
      [10] "test_config_16_no_dummies_spec <- "                                                             
      [11] "  svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% "                         
      [12] "  set_mode(\"classification\") "                                                                
      [13] ""                                                                                               
      [14] "test_config_16_no_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                              
      [16] "  add_recipe(test_config_16_no_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_16_no_dummies_spec) "                                                   
      [18] ""                                                                                               
      [19] "set.seed(27246)"                                                                                
      [20] "test_config_16_no_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_16_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_17_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  ## Since dot product calculations are used, the predictor variables "                      
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "                 
       [5] "  ## predictors, any predictors with a single unique value are filtered "                    
       [6] "  ## out. "                                                                                  
       [7] "  step_zv(all_predictors()) %>% "                                                            
       [8] "  step_normalize(all_numeric_predictors()) "                                                 
       [9] ""                                                                                            
      [10] "test_config_17_dummies_spec <- "                                                             
      [11] "  svm_rbf(cost = tune(), rbf_sigma = tune()) %>% "                                           
      [12] "  set_mode(\"regression\") "                                                                 
      [13] ""                                                                                            
      [14] "test_config_17_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                           
      [16] "  add_recipe(test_config_17_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_17_dummies_spec) "                                                   
      [18] ""                                                                                            
      [19] "set.seed(27246)"                                                                             
      [20] "test_config_17_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_17_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_17_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  ## Since dot product calculations are used, the predictor variables "                         
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "                    
       [5] "  ## predictors, any predictors with a single unique value are filtered "                       
       [6] "  ## out. "                                                                                     
       [7] "  step_zv(all_predictors()) %>% "                                                               
       [8] "  step_normalize(all_numeric_predictors()) "                                                    
       [9] ""                                                                                               
      [10] "test_config_17_no_dummies_spec <- "                                                             
      [11] "  svm_rbf(cost = tune(), rbf_sigma = tune()) %>% "                                              
      [12] "  set_mode(\"classification\") "                                                                
      [13] ""                                                                                               
      [14] "test_config_17_no_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                              
      [16] "  add_recipe(test_config_17_no_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_17_no_dummies_spec) "                                                   
      [18] ""                                                                                               
      [19] "set.seed(27246)"                                                                                
      [20] "test_config_17_no_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_17_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_18_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  ## For modeling, it is preferred to encode qualitative data as factors "                      
       [4] "  ## (instead of character). "                                                                  
       [5] "  step_string2factor(one_of(\"island\")) "                                                      
       [6] ""                                                                                               
       [7] "test_config_18_no_dummies_spec <- "                                                             
       [8] "  boost_tree(trees = tune(), min_n = tune()) %>% "                                              
       [9] "  set_mode(\"classification\") %>% "                                                            
      [10] "  set_engine(\"C5.0\") "                                                                        
      [11] ""                                                                                               
      [12] "test_config_18_no_dummies_workflow <- "                                                         
      [13] "  workflow() %>% "                                                                              
      [14] "  add_recipe(test_config_18_no_dummies_recipe) %>% "                                            
      [15] "  add_model(test_config_18_no_dummies_spec) "                                                   
      [16] ""                                                                                               
      [17] "set.seed(27246)"                                                                                
      [18] "test_config_18_no_dummies_tune <-"                                                              
      [19] "  tune_grid(test_config_18_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [20] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_19_dummies_recipe <- "                                          
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_string2factor(one_of(\"island\")) %>% "                              
       [4] "  step_novel(all_nominal_predictors()) %>% "                                
       [5] "  step_dummy(all_nominal_predictors()) %>% "                                
       [6] "  step_zv(all_predictors()) %>% "                                           
       [7] "  step_normalize(all_numeric_predictors()) "                                
       [8] ""                                                                           
       [9] "test_config_19_dummies_spec <- "                                            
      [10] "  linear_reg() %>% "                                                        
      [11] "  set_mode(\"regression\") %>% "                                            
      [12] "  set_engine(\"glmnet\") "                                                  
      [13] ""                                                                           
      [14] "test_config_19_dummies_workflow <- "                                        
      [15] "  workflow() %>% "                                                          
      [16] "  add_recipe(test_config_19_dummies_recipe) %>% "                           
      [17] "  add_model(test_config_19_dummies_spec) "                                  

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_19_no_dummies_recipe <- "                                   
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_string2factor(one_of(\"island\")) %>% "                          
       [4] "  step_novel(all_nominal_predictors()) %>% "                            
       [5] "  step_dummy(all_nominal_predictors()) %>% "                            
       [6] "  step_zv(all_predictors()) %>% "                                       
       [7] "  step_normalize(all_numeric_predictors()) "                            
       [8] ""                                                                       
       [9] "test_config_19_no_dummies_spec <- "                                     
      [10] "  multinom_reg() %>% "                                                  
      [11] "  set_mode(\"classification\") %>% "                                    
      [12] "  set_engine(\"glmnet\") "                                              
      [13] ""                                                                       
      [14] "test_config_19_no_dummies_workflow <- "                                 
      [15] "  workflow() %>% "                                                      
      [16] "  add_recipe(test_config_19_no_dummies_recipe) %>% "                    
      [17] "  add_model(test_config_19_no_dummies_spec) "                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_20_dummies_recipe <- "                                          
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_string2factor(one_of(\"island\")) %>% "                              
       [4] "  step_novel(all_nominal_predictors()) %>% "                                
       [5] "  step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% "                
       [6] "  step_zv(all_predictors()) "                                               
       [7] ""                                                                           
       [8] "test_config_20_dummies_spec <- "                                            
       [9] "  boost_tree() %>% "                                                        
      [10] "  set_mode(\"regression\") %>% "                                            
      [11] "  set_engine(\"xgboost\") "                                                 
      [12] ""                                                                           
      [13] "test_config_20_dummies_workflow <- "                                        
      [14] "  workflow() %>% "                                                          
      [15] "  add_recipe(test_config_20_dummies_recipe) %>% "                           
      [16] "  add_model(test_config_20_dummies_spec) "                                  

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_20_no_dummies_recipe <- "                                   
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_string2factor(one_of(\"island\")) %>% "                          
       [4] "  step_novel(all_nominal_predictors()) %>% "                            
       [5] "  step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% "            
       [6] "  step_zv(all_predictors()) "                                           
       [7] ""                                                                       
       [8] "test_config_20_no_dummies_spec <- "                                     
       [9] "  boost_tree() %>% "                                                    
      [10] "  set_mode(\"classification\") %>% "                                    
      [11] "  set_engine(\"xgboost\") "                                             
      [12] ""                                                                       
      [13] "test_config_20_no_dummies_workflow <- "                                 
      [14] "  workflow() %>% "                                                      
      [15] "  add_recipe(test_config_20_no_dummies_recipe) %>% "                    
      [16] "  add_model(test_config_20_no_dummies_spec) "                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_21_dummies_recipe <- "                                          
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_string2factor(one_of(\"island\")) "                                  
       [4] ""                                                                           
       [5] "test_config_21_dummies_spec <- "                                            
       [6] "  rand_forest(trees = 1000) %>% "                                           
       [7] "  set_mode(\"regression\") %>% "                                            
       [8] "  set_engine(\"ranger\") "                                                  
       [9] ""                                                                           
      [10] "test_config_21_dummies_workflow <- "                                        
      [11] "  workflow() %>% "                                                          
      [12] "  add_recipe(test_config_21_dummies_recipe) %>% "                           
      [13] "  add_model(test_config_21_dummies_spec) "                                  

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_21_no_dummies_recipe <- "                                   
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_string2factor(one_of(\"island\")) "                              
       [4] ""                                                                       
       [5] "test_config_21_no_dummies_spec <- "                                     
       [6] "  rand_forest(trees = 1000) %>% "                                       
       [7] "  set_mode(\"classification\") %>% "                                    
       [8] "  set_engine(\"ranger\") "                                              
       [9] ""                                                                       
      [10] "test_config_21_no_dummies_workflow <- "                                 
      [11] "  workflow() %>% "                                                      
      [12] "  add_recipe(test_config_21_no_dummies_recipe) %>% "                    
      [13] "  add_model(test_config_21_no_dummies_spec) "                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_22_dummies_recipe <- "                                          
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_string2factor(one_of(\"island\")) %>% "                              
       [4] "  step_novel(all_nominal_predictors()) %>% "                                
       [5] "  step_dummy(all_nominal_predictors()) %>% "                                
       [6] "  step_zv(all_predictors()) %>% "                                           
       [7] "  step_normalize(all_numeric_predictors()) "                                
       [8] ""                                                                           
       [9] "test_config_22_dummies_spec <- "                                            
      [10] "  nearest_neighbor() %>% "                                                  
      [11] "  set_mode(\"regression\") %>% "                                            
      [12] "  set_engine(\"kknn\") "                                                    
      [13] ""                                                                           
      [14] "test_config_22_dummies_workflow <- "                                        
      [15] "  workflow() %>% "                                                          
      [16] "  add_recipe(test_config_22_dummies_recipe) %>% "                           
      [17] "  add_model(test_config_22_dummies_spec) "                                  

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_22_no_dummies_recipe <- "                                   
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_string2factor(one_of(\"island\")) %>% "                          
       [4] "  step_novel(all_nominal_predictors()) %>% "                            
       [5] "  step_dummy(all_nominal_predictors()) %>% "                            
       [6] "  step_zv(all_predictors()) %>% "                                       
       [7] "  step_normalize(all_numeric_predictors()) "                            
       [8] ""                                                                       
       [9] "test_config_22_no_dummies_spec <- "                                     
      [10] "  nearest_neighbor() %>% "                                              
      [11] "  set_mode(\"classification\") %>% "                                    
      [12] "  set_engine(\"kknn\") "                                                
      [13] ""                                                                       
      [14] "test_config_22_no_dummies_workflow <- "                                 
      [15] "  workflow() %>% "                                                      
      [16] "  add_recipe(test_config_22_no_dummies_recipe) %>% "                    
      [17] "  add_model(test_config_22_no_dummies_spec) "                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_23_dummies_recipe <- "                                          
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_string2factor(one_of(\"island\")) %>% "                              
       [4] "  step_novel(all_nominal_predictors()) %>% "                                
       [5] "  step_dummy(all_nominal_predictors()) %>% "                                
       [6] "  step_zv(all_predictors()) "                                               
       [7] ""                                                                           
       [8] "test_config_23_dummies_spec <- "                                            
       [9] "  mars() %>% "                                                              
      [10] "  set_mode(\"regression\") %>% "                                            
      [11] "  set_engine(\"earth\") "                                                   
      [12] ""                                                                           
      [13] "test_config_23_dummies_workflow <- "                                        
      [14] "  workflow() %>% "                                                          
      [15] "  add_recipe(test_config_23_dummies_recipe) %>% "                           
      [16] "  add_model(test_config_23_dummies_spec) "                                  

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_23_no_dummies_recipe <- "                                   
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_string2factor(one_of(\"island\")) %>% "                          
       [4] "  step_novel(all_nominal_predictors()) %>% "                            
       [5] "  step_dummy(all_nominal_predictors()) %>% "                            
       [6] "  step_zv(all_predictors()) "                                           
       [7] ""                                                                       
       [8] "test_config_23_no_dummies_spec <- "                                     
       [9] "  mars() %>% "                                                          
      [10] "  set_mode(\"classification\") %>% "                                    
      [11] "  set_engine(\"earth\") "                                               
      [12] ""                                                                       
      [13] "test_config_23_no_dummies_workflow <- "                                 
      [14] "  workflow() %>% "                                                      
      [15] "  add_recipe(test_config_23_no_dummies_recipe) %>% "                    
      [16] "  add_model(test_config_23_no_dummies_spec) "                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                                             
       [2] ""                                                                           
       [3] "test_config_24_dummies_recipe <- "                                          
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [5] "  step_string2factor(one_of(\"island\")) %>% "                              
       [6] "  step_zv(all_predictors()) "                                               
       [7] ""                                                                           
       [8] "test_config_24_dummies_spec <- "                                            
       [9] "  cubist_rules() %>% "                                                      
      [10] "  set_engine(\"Cubist\") "                                                  
      [11] ""                                                                           
      [12] "test_config_24_dummies_workflow <- "                                        
      [13] "  workflow() %>% "                                                          
      [14] "  add_recipe(test_config_24_dummies_recipe) %>% "                           
      [15] "  add_model(test_config_24_dummies_spec) "                                  

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_25_dummies_recipe <- "                                          
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_zv(all_predictors()) %>% "                                           
       [4] "  step_normalize(all_numeric_predictors()) "                                
       [5] ""                                                                           
       [6] "test_config_25_dummies_spec <- "                                            
       [7] "  svm_poly() %>% "                                                          
       [8] "  set_mode(\"regression\") "                                                
       [9] ""                                                                           
      [10] "test_config_25_dummies_workflow <- "                                        
      [11] "  workflow() %>% "                                                          
      [12] "  add_recipe(test_config_25_dummies_recipe) %>% "                           
      [13] "  add_model(test_config_25_dummies_spec) "                                  

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_25_no_dummies_recipe <- "                                   
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_zv(all_predictors()) %>% "                                       
       [4] "  step_normalize(all_numeric_predictors()) "                            
       [5] ""                                                                       
       [6] "test_config_25_no_dummies_spec <- "                                     
       [7] "  svm_poly() %>% "                                                      
       [8] "  set_mode(\"classification\") "                                        
       [9] ""                                                                       
      [10] "test_config_25_no_dummies_workflow <- "                                 
      [11] "  workflow() %>% "                                                      
      [12] "  add_recipe(test_config_25_no_dummies_recipe) %>% "                    
      [13] "  add_model(test_config_25_no_dummies_spec) "                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_26_dummies_recipe <- "                                          
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_zv(all_predictors()) %>% "                                           
       [4] "  step_normalize(all_numeric_predictors()) "                                
       [5] ""                                                                           
       [6] "test_config_26_dummies_spec <- "                                            
       [7] "  svm_rbf() %>% "                                                           
       [8] "  set_mode(\"regression\") "                                                
       [9] ""                                                                           
      [10] "test_config_26_dummies_workflow <- "                                        
      [11] "  workflow() %>% "                                                          
      [12] "  add_recipe(test_config_26_dummies_recipe) %>% "                           
      [13] "  add_model(test_config_26_dummies_spec) "                                  

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_26_no_dummies_recipe <- "                                   
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_zv(all_predictors()) %>% "                                       
       [4] "  step_normalize(all_numeric_predictors()) "                            
       [5] ""                                                                       
       [6] "test_config_26_no_dummies_spec <- "                                     
       [7] "  svm_rbf() %>% "                                                       
       [8] "  set_mode(\"classification\") "                                        
       [9] ""                                                                       
      [10] "test_config_26_no_dummies_workflow <- "                                 
      [11] "  workflow() %>% "                                                      
      [12] "  add_recipe(test_config_26_no_dummies_recipe) %>% "                    
      [13] "  add_model(test_config_26_no_dummies_spec) "                           

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_27_no_dummies_recipe <- "                                   
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "
       [3] "  step_string2factor(one_of(\"island\")) "                              
       [4] ""                                                                       
       [5] "test_config_27_no_dummies_spec <- "                                     
       [6] "  boost_tree() %>% "                                                    
       [7] "  set_mode(\"classification\") %>% "                                    
       [8] "  set_engine(\"C5.0\") "                                                
       [9] ""                                                                       
      [10] "test_config_27_no_dummies_workflow <- "                                 
      [11] "  workflow() %>% "                                                      
      [12] "  add_recipe(test_config_27_no_dummies_recipe) %>% "                    
      [13] "  add_model(test_config_27_no_dummies_spec) "                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_28_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  step_string2factor(one_of(\"island\")) %>% "                                               
       [4] "  step_novel(all_nominal_predictors()) %>% "                                                 
       [5] "  step_dummy(all_nominal_predictors()) %>% "                                                 
       [6] "  step_zv(all_predictors()) %>% "                                                            
       [7] "  step_normalize(all_numeric_predictors()) "                                                 
       [8] ""                                                                                            
       [9] "test_config_28_dummies_spec <- "                                                             
      [10] "  linear_reg(penalty = tune(), mixture = tune()) %>% "                                       
      [11] "  set_mode(\"regression\") %>% "                                                             
      [12] "  set_engine(\"glmnet\") "                                                                   
      [13] ""                                                                                            
      [14] "test_config_28_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                           
      [16] "  add_recipe(test_config_28_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_28_dummies_spec) "                                                   
      [18] ""                                                                                            
      [19] "test_config_28_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), "  
      [20] "    mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) "                                              
      [21] ""                                                                                            
      [22] "test_config_28_dummies_tune <- "                                                             
      [23] "  tune_grid(test_config_28_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [24] "    grid = test_config_28_dummies_grid) "                                                    

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_28_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  step_string2factor(one_of(\"island\")) %>% "                                                  
       [4] "  step_novel(all_nominal_predictors()) %>% "                                                    
       [5] "  step_dummy(all_nominal_predictors()) %>% "                                                    
       [6] "  step_zv(all_predictors()) %>% "                                                               
       [7] "  step_normalize(all_numeric_predictors()) "                                                    
       [8] ""                                                                                               
       [9] "test_config_28_no_dummies_spec <- "                                                             
      [10] "  multinom_reg(penalty = tune(), mixture = tune()) %>% "                                        
      [11] "  set_mode(\"classification\") %>% "                                                            
      [12] "  set_engine(\"glmnet\") "                                                                      
      [13] ""                                                                                               
      [14] "test_config_28_no_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                              
      [16] "  add_recipe(test_config_28_no_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_28_no_dummies_spec) "                                                   
      [18] ""                                                                                               
      [19] "test_config_28_no_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, "                    
      [20] "    length.out = 20), mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) "                               
      [21] ""                                                                                               
      [22] "test_config_28_no_dummies_tune <- "                                                             
      [23] "  tune_grid(test_config_28_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [24] "    grid = test_config_28_no_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_29_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  step_string2factor(one_of(\"island\")) %>% "                                               
       [4] "  step_novel(all_nominal_predictors()) %>% "                                                 
       [5] "  step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% "                                 
       [6] "  step_zv(all_predictors()) "                                                                
       [7] ""                                                                                            
       [8] "test_config_29_dummies_spec <- "                                                             
       [9] "  boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), "     
      [10] "    loss_reduction = tune(), sample_size = tune()) %>% "                                     
      [11] "  set_mode(\"regression\") %>% "                                                             
      [12] "  set_engine(\"xgboost\") "                                                                  
      [13] ""                                                                                            
      [14] "test_config_29_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                           
      [16] "  add_recipe(test_config_29_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_29_dummies_spec) "                                                   
      [18] ""                                                                                            
      [19] "set.seed(27246)"                                                                             
      [20] "test_config_29_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_29_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_29_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  step_string2factor(one_of(\"island\")) %>% "                                                  
       [4] "  step_novel(all_nominal_predictors()) %>% "                                                    
       [5] "  step_dummy(all_nominal_predictors(), one_hot = TRUE) %>% "                                    
       [6] "  step_zv(all_predictors()) "                                                                   
       [7] ""                                                                                               
       [8] "test_config_29_no_dummies_spec <- "                                                             
       [9] "  boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), "        
      [10] "    loss_reduction = tune(), sample_size = tune()) %>% "                                        
      [11] "  set_mode(\"classification\") %>% "                                                            
      [12] "  set_engine(\"xgboost\") "                                                                     
      [13] ""                                                                                               
      [14] "test_config_29_no_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                              
      [16] "  add_recipe(test_config_29_no_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_29_no_dummies_spec) "                                                   
      [18] ""                                                                                               
      [19] "set.seed(27246)"                                                                                
      [20] "test_config_29_no_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_29_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_30_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  step_string2factor(one_of(\"island\")) "                                                   
       [4] ""                                                                                            
       [5] "test_config_30_dummies_spec <- "                                                             
       [6] "  rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% "                             
       [7] "  set_mode(\"regression\") %>% "                                                             
       [8] "  set_engine(\"ranger\") "                                                                   
       [9] ""                                                                                            
      [10] "test_config_30_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                           
      [12] "  add_recipe(test_config_30_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_30_dummies_spec) "                                                   
      [14] ""                                                                                            
      [15] "set.seed(27246)"                                                                             
      [16] "test_config_30_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_30_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_30_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  step_string2factor(one_of(\"island\")) "                                                      
       [4] ""                                                                                               
       [5] "test_config_30_no_dummies_spec <- "                                                             
       [6] "  rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% "                                
       [7] "  set_mode(\"classification\") %>% "                                                            
       [8] "  set_engine(\"ranger\") "                                                                      
       [9] ""                                                                                               
      [10] "test_config_30_no_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                              
      [12] "  add_recipe(test_config_30_no_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_30_no_dummies_spec) "                                                   
      [14] ""                                                                                               
      [15] "set.seed(27246)"                                                                                
      [16] "test_config_30_no_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_30_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_31_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  step_string2factor(one_of(\"island\")) %>% "                                               
       [4] "  step_novel(all_nominal_predictors()) %>% "                                                 
       [5] "  step_dummy(all_nominal_predictors()) %>% "                                                 
       [6] "  step_zv(all_predictors()) %>% "                                                            
       [7] "  step_normalize(all_numeric_predictors()) "                                                 
       [8] ""                                                                                            
       [9] "test_config_31_dummies_spec <- "                                                             
      [10] "  nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% "                           
      [11] "  set_mode(\"regression\") %>% "                                                             
      [12] "  set_engine(\"kknn\") "                                                                     
      [13] ""                                                                                            
      [14] "test_config_31_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                           
      [16] "  add_recipe(test_config_31_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_31_dummies_spec) "                                                   
      [18] ""                                                                                            
      [19] "set.seed(27246)"                                                                             
      [20] "test_config_31_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_31_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_31_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  step_string2factor(one_of(\"island\")) %>% "                                                  
       [4] "  step_novel(all_nominal_predictors()) %>% "                                                    
       [5] "  step_dummy(all_nominal_predictors()) %>% "                                                    
       [6] "  step_zv(all_predictors()) %>% "                                                               
       [7] "  step_normalize(all_numeric_predictors()) "                                                    
       [8] ""                                                                                               
       [9] "test_config_31_no_dummies_spec <- "                                                             
      [10] "  nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% "                              
      [11] "  set_mode(\"classification\") %>% "                                                            
      [12] "  set_engine(\"kknn\") "                                                                        
      [13] ""                                                                                               
      [14] "test_config_31_no_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                              
      [16] "  add_recipe(test_config_31_no_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_31_no_dummies_spec) "                                                   
      [18] ""                                                                                               
      [19] "set.seed(27246)"                                                                                
      [20] "test_config_31_no_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_31_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_32_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  step_string2factor(one_of(\"island\")) %>% "                                               
       [4] "  step_novel(all_nominal_predictors()) %>% "                                                 
       [5] "  step_dummy(all_nominal_predictors()) %>% "                                                 
       [6] "  step_zv(all_predictors()) "                                                                
       [7] ""                                                                                            
       [8] "test_config_32_dummies_spec <- "                                                             
       [9] "  mars(num_terms = tune(), prod_degree = tune(), prune_method = \"none\") %>% "              
      [10] "  set_mode(\"regression\") %>% "                                                             
      [11] "  set_engine(\"earth\") "                                                                    
      [12] ""                                                                                            
      [13] "test_config_32_dummies_workflow <- "                                                         
      [14] "  workflow() %>% "                                                                           
      [15] "  add_recipe(test_config_32_dummies_recipe) %>% "                                            
      [16] "  add_model(test_config_32_dummies_spec) "                                                   
      [17] ""                                                                                            
      [18] "test_config_32_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) "   
      [19] ""                                                                                            
      [20] "test_config_32_dummies_tune <- "                                                             
      [21] "  tune_grid(test_config_32_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = test_config_32_dummies_grid) "                                                    

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_32_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  step_string2factor(one_of(\"island\")) %>% "                                                  
       [4] "  step_novel(all_nominal_predictors()) %>% "                                                    
       [5] "  step_dummy(all_nominal_predictors()) %>% "                                                    
       [6] "  step_zv(all_predictors()) "                                                                   
       [7] ""                                                                                               
       [8] "test_config_32_no_dummies_spec <- "                                                             
       [9] "  mars(num_terms = tune(), prod_degree = tune(), prune_method = \"none\") %>% "                 
      [10] "  set_mode(\"classification\") %>% "                                                            
      [11] "  set_engine(\"earth\") "                                                                       
      [12] ""                                                                                               
      [13] "test_config_32_no_dummies_workflow <- "                                                         
      [14] "  workflow() %>% "                                                                              
      [15] "  add_recipe(test_config_32_no_dummies_recipe) %>% "                                            
      [16] "  add_model(test_config_32_no_dummies_spec) "                                                   
      [17] ""                                                                                               
      [18] "test_config_32_no_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) "   
      [19] ""                                                                                               
      [20] "test_config_32_no_dummies_tune <- "                                                             
      [21] "  tune_grid(test_config_32_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = test_config_32_no_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                                                              
       [2] ""                                                                                            
       [3] "test_config_33_dummies_recipe <- "                                                           
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [5] "  step_string2factor(one_of(\"island\")) %>% "                                               
       [6] "  step_zv(all_predictors()) "                                                                
       [7] ""                                                                                            
       [8] "test_config_33_dummies_spec <- "                                                             
       [9] "  cubist_rules(committees = tune(), neighbors = tune()) %>% "                                
      [10] "  set_engine(\"Cubist\") "                                                                   
      [11] ""                                                                                            
      [12] "test_config_33_dummies_workflow <- "                                                         
      [13] "  workflow() %>% "                                                                           
      [14] "  add_recipe(test_config_33_dummies_recipe) %>% "                                            
      [15] "  add_model(test_config_33_dummies_spec) "                                                   
      [16] ""                                                                                            
      [17] "test_config_33_dummies_grid <- tidyr::crossing(committees = c(1:9, (1:5) * "                 
      [18] "    10), neighbors = c(0, 3, 6, 9)) "                                                        
      [19] ""                                                                                            
      [20] "test_config_33_dummies_tune <- "                                                             
      [21] "  tune_grid(test_config_33_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = test_config_33_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_34_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  step_zv(all_predictors()) %>% "                                                            
       [4] "  step_normalize(all_numeric_predictors()) "                                                 
       [5] ""                                                                                            
       [6] "test_config_34_dummies_spec <- "                                                             
       [7] "  svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% "                      
       [8] "  set_mode(\"regression\") "                                                                 
       [9] ""                                                                                            
      [10] "test_config_34_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                           
      [12] "  add_recipe(test_config_34_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_34_dummies_spec) "                                                   
      [14] ""                                                                                            
      [15] "set.seed(27246)"                                                                             
      [16] "test_config_34_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_34_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_34_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  step_zv(all_predictors()) %>% "                                                               
       [4] "  step_normalize(all_numeric_predictors()) "                                                    
       [5] ""                                                                                               
       [6] "test_config_34_no_dummies_spec <- "                                                             
       [7] "  svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% "                         
       [8] "  set_mode(\"classification\") "                                                                
       [9] ""                                                                                               
      [10] "test_config_34_no_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                              
      [12] "  add_recipe(test_config_34_no_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_34_no_dummies_spec) "                                                   
      [14] ""                                                                                               
      [15] "set.seed(27246)"                                                                                
      [16] "test_config_34_no_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_34_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_35_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins, clipboard = TRUE) %>% "                 
       [3] "  step_zv(all_predictors()) %>% "                                                            
       [4] "  step_normalize(all_numeric_predictors()) "                                                 
       [5] ""                                                                                            
       [6] "test_config_35_dummies_spec <- "                                                             
       [7] "  svm_rbf(cost = tune(), rbf_sigma = tune()) %>% "                                           
       [8] "  set_mode(\"regression\") "                                                                 
       [9] ""                                                                                            
      [10] "test_config_35_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                           
      [12] "  add_recipe(test_config_35_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_35_dummies_spec) "                                                   
      [14] ""                                                                                            
      [15] "set.seed(27246)"                                                                             
      [16] "test_config_35_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_35_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_35_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  step_zv(all_predictors()) %>% "                                                               
       [4] "  step_normalize(all_numeric_predictors()) "                                                    
       [5] ""                                                                                               
       [6] "test_config_35_no_dummies_spec <- "                                                             
       [7] "  svm_rbf(cost = tune(), rbf_sigma = tune()) %>% "                                              
       [8] "  set_mode(\"classification\") "                                                                
       [9] ""                                                                                               
      [10] "test_config_35_no_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                              
      [12] "  add_recipe(test_config_35_no_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_35_no_dummies_spec) "                                                   
      [14] ""                                                                                               
      [15] "set.seed(27246)"                                                                                
      [16] "test_config_35_no_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_35_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_36_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins, clipboard = TRUE) %>% "                        
       [3] "  step_string2factor(one_of(\"island\")) "                                                      
       [4] ""                                                                                               
       [5] "test_config_36_no_dummies_spec <- "                                                             
       [6] "  boost_tree(trees = tune(), min_n = tune()) %>% "                                              
       [7] "  set_mode(\"classification\") %>% "                                                            
       [8] "  set_engine(\"C5.0\") "                                                                        
       [9] ""                                                                                               
      [10] "test_config_36_no_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                              
      [12] "  add_recipe(test_config_36_no_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_36_no_dummies_spec) "                                                   
      [14] ""                                                                                               
      [15] "set.seed(27246)"                                                                                
      [16] "test_config_36_no_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_36_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                           

