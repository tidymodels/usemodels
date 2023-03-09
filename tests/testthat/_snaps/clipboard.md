# all model templates with clipboard

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(baguette)"                                    
       [2] ""                                                     
       [3] "test_config_1_dummies_recipe <- "                     
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) "
       [5] ""                                                     
       [6] "test_config_1_dummies_spec <- "                       
       [7] "  bag_tree() %>% "                                    
       [8] "  set_mode(\"regression\") %>% "                      
       [9] "  set_engine(\"rpart\") "                             
      [10] ""                                                     
      [11] "test_config_1_dummies_workflow <- "                   
      [12] "  workflow() %>% "                                    
      [13] "  add_recipe(test_config_1_dummies_recipe) %>% "      
      [14] "  add_model(test_config_1_dummies_spec) "             

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(baguette)"                                 
       [2] ""                                                  
       [3] "test_config_1_no_dummies_recipe <- "               
       [4] "  recipe(formula = species ~ ., data = penguins) " 
       [5] ""                                                  
       [6] "test_config_1_no_dummies_spec <- "                 
       [7] "  bag_tree() %>% "                                 
       [8] "  set_mode(\"classification\") %>% "               
       [9] "  set_engine(\"rpart\") "                          
      [10] ""                                                  
      [11] "test_config_1_no_dummies_workflow <- "             
      [12] "  workflow() %>% "                                 
      [13] "  add_recipe(test_config_1_no_dummies_recipe) %>% "
      [14] "  add_model(test_config_1_no_dummies_spec) "       

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_2_no_dummies_recipe <- "               
       [2] "  recipe(formula = species ~ ., data = penguins) " 
       [3] ""                                                  
       [4] "test_config_2_no_dummies_spec <- "                 
       [5] "  boost_tree() %>% "                               
       [6] "  set_mode(\"classification\") %>% "               
       [7] "  set_engine(\"C5.0\") "                           
       [8] ""                                                  
       [9] "test_config_2_no_dummies_workflow <- "             
      [10] "  workflow() %>% "                                 
      [11] "  add_recipe(test_config_2_no_dummies_recipe) %>% "
      [12] "  add_model(test_config_2_no_dummies_spec) "       

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                           
       [2] ""                                                         
       [3] "test_config_3_dummies_recipe <- "                         
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [5] "  step_zv(all_predictors()) "                             
       [6] ""                                                         
       [7] "test_config_3_dummies_spec <- "                           
       [8] "  cubist_rules() %>% "                                    
       [9] "  set_engine(\"Cubist\") "                                
      [10] ""                                                         
      [11] "test_config_3_dummies_workflow <- "                       
      [12] "  workflow() %>% "                                        
      [13] "  add_recipe(test_config_3_dummies_recipe) %>% "          
      [14] "  add_model(test_config_3_dummies_spec) "                 

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_4_dummies_recipe <- "                     
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "
       [3] ""                                                     
       [4] "test_config_4_dummies_spec <- "                       
       [5] "  bart() %>% "                                        
       [6] "  set_mode(\"regression\") %>% "                      
       [7] "  set_engine(\"dbarts\") "                            
       [8] ""                                                     
       [9] "test_config_4_dummies_workflow <- "                   
      [10] "  workflow() %>% "                                    
      [11] "  add_recipe(test_config_4_dummies_recipe) %>% "      
      [12] "  add_model(test_config_4_dummies_spec) "             

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_4_no_dummies_recipe <- "               
       [2] "  recipe(formula = species ~ ., data = penguins) " 
       [3] ""                                                  
       [4] "test_config_4_no_dummies_spec <- "                 
       [5] "  bart() %>% "                                     
       [6] "  set_mode(\"classification\") %>% "               
       [7] "  set_engine(\"dbarts\") "                         
       [8] ""                                                  
       [9] "test_config_4_no_dummies_workflow <- "             
      [10] "  workflow() %>% "                                 
      [11] "  add_recipe(test_config_4_no_dummies_recipe) %>% "
      [12] "  add_model(test_config_4_no_dummies_spec) "       

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_5_dummies_recipe <- "                         
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) "                             
       [4] ""                                                         
       [5] "test_config_5_dummies_spec <- "                           
       [6] "  mars() %>% "                                            
       [7] "  set_mode(\"regression\") %>% "                          
       [8] "  set_engine(\"earth\") "                                 
       [9] ""                                                         
      [10] "test_config_5_dummies_workflow <- "                       
      [11] "  workflow() %>% "                                        
      [12] "  add_recipe(test_config_5_dummies_recipe) %>% "          
      [13] "  add_model(test_config_5_dummies_spec) "                 

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_5_no_dummies_recipe <- "                  
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) "                         
       [4] ""                                                     
       [5] "test_config_5_no_dummies_spec <- "                    
       [6] "  mars() %>% "                                        
       [7] "  set_mode(\"classification\") %>% "                  
       [8] "  set_engine(\"earth\") "                             
       [9] ""                                                     
      [10] "test_config_5_no_dummies_workflow <- "                
      [11] "  workflow() %>% "                                    
      [12] "  add_recipe(test_config_5_no_dummies_recipe) %>% "   
      [13] "  add_model(test_config_5_no_dummies_spec) "          

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_6_dummies_recipe <- "                                          
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                 
       [3] "  ## Regularization methods sum up functions of the model slope "          
       [4] "  ## coefficients. Because of this, the predictor variables should be on " 
       [5] "  ## the same scale. Before centering and scaling the numeric predictors, "
       [6] "  ## any predictors with a single unique value are filtered out. "         
       [7] "  step_zv(all_predictors()) %>% "                                          
       [8] "  step_normalize(all_numeric_predictors()) "                               
       [9] ""                                                                          
      [10] "test_config_6_dummies_spec <- "                                            
      [11] "  linear_reg() %>% "                                                       
      [12] "  set_mode(\"regression\") %>% "                                           
      [13] "  set_engine(\"glmnet\") "                                                 
      [14] ""                                                                          
      [15] "test_config_6_dummies_workflow <- "                                        
      [16] "  workflow() %>% "                                                         
      [17] "  add_recipe(test_config_6_dummies_recipe) %>% "                           
      [18] "  add_model(test_config_6_dummies_spec) "                                  

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_6_no_dummies_recipe <- "                                       
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                     
       [3] "  ## Regularization methods sum up functions of the model slope "          
       [4] "  ## coefficients. Because of this, the predictor variables should be on " 
       [5] "  ## the same scale. Before centering and scaling the numeric predictors, "
       [6] "  ## any predictors with a single unique value are filtered out. "         
       [7] "  step_zv(all_predictors()) %>% "                                          
       [8] "  step_normalize(all_numeric_predictors()) "                               
       [9] ""                                                                          
      [10] "test_config_6_no_dummies_spec <- "                                         
      [11] "  multinom_reg() %>% "                                                     
      [12] "  set_mode(\"classification\") %>% "                                       
      [13] "  set_engine(\"glmnet\") "                                                 
      [14] ""                                                                          
      [15] "test_config_6_no_dummies_workflow <- "                                     
      [16] "  workflow() %>% "                                                         
      [17] "  add_recipe(test_config_6_no_dummies_recipe) %>% "                        
      [18] "  add_model(test_config_6_no_dummies_spec) "                               

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_7_dummies_recipe <- "                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                  
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
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                      
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
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                  
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
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                      
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
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_9_dummies_recipe <- "                                          
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                 
       [3] "  ## Since distance calculations are used, the predictor variables should "
       [4] "  ## be on the same scale. Before centering and scaling the numeric "      
       [5] "  ## predictors, any predictors with a single unique value are filtered "  
       [6] "  ## out. "                                                                
       [7] "  step_zv(all_predictors()) %>% "                                          
       [8] "  step_normalize(all_numeric_predictors()) "                               
       [9] ""                                                                          
      [10] "test_config_9_dummies_spec <- "                                            
      [11] "  nearest_neighbor() %>% "                                                 
      [12] "  set_mode(\"regression\") %>% "                                           
      [13] "  set_engine(\"kknn\") "                                                   
      [14] ""                                                                          
      [15] "test_config_9_dummies_workflow <- "                                        
      [16] "  workflow() %>% "                                                         
      [17] "  add_recipe(test_config_9_dummies_recipe) %>% "                           
      [18] "  add_model(test_config_9_dummies_spec) "                                  

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_9_no_dummies_recipe <- "                                       
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                     
       [3] "  ## Since distance calculations are used, the predictor variables should "
       [4] "  ## be on the same scale. Before centering and scaling the numeric "      
       [5] "  ## predictors, any predictors with a single unique value are filtered "  
       [6] "  ## out. "                                                                
       [7] "  step_zv(all_predictors()) %>% "                                          
       [8] "  step_normalize(all_numeric_predictors()) "                               
       [9] ""                                                                          
      [10] "test_config_9_no_dummies_spec <- "                                         
      [11] "  nearest_neighbor() %>% "                                                 
      [12] "  set_mode(\"classification\") %>% "                                       
      [13] "  set_engine(\"kknn\") "                                                   
      [14] ""                                                                          
      [15] "test_config_9_no_dummies_workflow <- "                                     
      [16] "  workflow() %>% "                                                         
      [17] "  add_recipe(test_config_9_no_dummies_recipe) %>% "                        
      [18] "  add_model(test_config_9_no_dummies_spec) "                               

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_10_dummies_recipe <- "                                                  
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "                              
       [3] ""                                                                                   
       [4] "test_config_10_dummies_spec <- "                                                    
       [5] "  gen_additive_mod() %>% "                                                          
       [6] "  set_mode(\"regression\") %>% "                                                    
       [7] "  set_engine(\"mgcv\") "                                                            
       [8] ""                                                                                   
       [9] "test_config_10_dummies_workflow <- "                                                
      [10] "  workflow() %>% "                                                                  
      [11] "  add_recipe(test_config_10_dummies_recipe) %>% "                                   
      [12] "  add_model(test_config_10_dummies_spec, formula = stop(\"add your gam formula\")) "

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_10_no_dummies_recipe <- "                                                  
       [2] "  recipe(formula = species ~ ., data = penguins) "                                     
       [3] ""                                                                                      
       [4] "test_config_10_no_dummies_spec <- "                                                    
       [5] "  gen_additive_mod() %>% "                                                             
       [6] "  set_mode(\"classification\") %>% "                                                   
       [7] "  set_engine(\"mgcv\") "                                                               
       [8] ""                                                                                      
       [9] "test_config_10_no_dummies_workflow <- "                                                
      [10] "  workflow() %>% "                                                                     
      [11] "  add_recipe(test_config_10_no_dummies_recipe) %>% "                                   
      [12] "  add_model(test_config_10_no_dummies_spec, formula = stop(\"add your gam formula\")) "

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(plsmod)"                                          
       [2] ""                                                         
       [3] "test_config_11_dummies_recipe <- "                        
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [5] "  step_zv(all_predictors()) %>% "                         
       [6] "  step_normalize(all_numeric_predictors()) "              
       [7] ""                                                         
       [8] "test_config_11_dummies_spec <- "                          
       [9] "  pls() %>% "                                             
      [10] "  set_mode(\"regression\") %>% "                          
      [11] "  set_engine(\"mixOmics\") "                              
      [12] ""                                                         
      [13] "test_config_11_dummies_workflow <- "                      
      [14] "  workflow() %>% "                                        
      [15] "  add_recipe(test_config_11_dummies_recipe) %>% "         
      [16] "  add_model(test_config_11_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(plsmod)"                                      
       [2] ""                                                     
       [3] "test_config_11_no_dummies_recipe <- "                 
       [4] "  recipe(formula = species ~ ., data = penguins) %>% "
       [5] "  step_zv(all_predictors()) %>% "                     
       [6] "  step_normalize(all_numeric_predictors()) "          
       [7] ""                                                     
       [8] "test_config_11_no_dummies_spec <- "                   
       [9] "  pls() %>% "                                         
      [10] "  set_mode(\"classification\") %>% "                  
      [11] "  set_engine(\"mixOmics\") "                          
      [12] ""                                                     
      [13] "test_config_11_no_dummies_workflow <- "               
      [14] "  workflow() %>% "                                    
      [15] "  add_recipe(test_config_11_no_dummies_recipe) %>% "  
      [16] "  add_model(test_config_11_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_12_dummies_recipe <- "                        
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                         
       [4] "  step_normalize(all_numeric_predictors()) "              
       [5] ""                                                         
       [6] "test_config_12_dummies_spec <- "                          
       [7] "  mlp() %>% "                                             
       [8] "  set_mode(\"regression\") "                              
       [9] ""                                                         
      [10] "test_config_12_dummies_workflow <- "                      
      [11] "  workflow() %>% "                                        
      [12] "  add_recipe(test_config_12_dummies_recipe) %>% "         
      [13] "  add_model(test_config_12_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_12_no_dummies_recipe <- "                 
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                     
       [4] "  step_normalize(all_numeric_predictors()) "          
       [5] ""                                                     
       [6] "test_config_12_no_dummies_spec <- "                   
       [7] "  mlp() %>% "                                         
       [8] "  set_mode(\"classification\") "                      
       [9] ""                                                     
      [10] "test_config_12_no_dummies_workflow <- "               
      [11] "  workflow() %>% "                                    
      [12] "  add_recipe(test_config_12_no_dummies_recipe) %>% "  
      [13] "  add_model(test_config_12_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_13_dummies_recipe <- "                    
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "
       [3] ""                                                     
       [4] "test_config_13_dummies_spec <- "                      
       [5] "  rand_forest(trees = 1000) %>% "                     
       [6] "  set_mode(\"regression\") %>% "                      
       [7] "  set_engine(\"ranger\") "                            
       [8] ""                                                     
       [9] "test_config_13_dummies_workflow <- "                  
      [10] "  workflow() %>% "                                    
      [11] "  add_recipe(test_config_13_dummies_recipe) %>% "     
      [12] "  add_model(test_config_13_dummies_spec) "            

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_13_no_dummies_recipe <- "               
       [2] "  recipe(formula = species ~ ., data = penguins) "  
       [3] ""                                                   
       [4] "test_config_13_no_dummies_spec <- "                 
       [5] "  rand_forest(trees = 1000) %>% "                   
       [6] "  set_mode(\"classification\") %>% "                
       [7] "  set_engine(\"ranger\") "                          
       [8] ""                                                   
       [9] "test_config_13_no_dummies_workflow <- "             
      [10] "  workflow() %>% "                                  
      [11] "  add_recipe(test_config_13_no_dummies_recipe) %>% "
      [12] "  add_model(test_config_13_no_dummies_spec) "       

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_14_dummies_recipe <- "                    
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "
       [3] ""                                                     
       [4] "test_config_14_dummies_spec <- "                      
       [5] "  decision_tree() %>% "                               
       [6] "  set_mode(\"regression\") %>% "                      
       [7] "  set_engine(\"rpart\") "                             
       [8] ""                                                     
       [9] "test_config_14_dummies_workflow <- "                  
      [10] "  workflow() %>% "                                    
      [11] "  add_recipe(test_config_14_dummies_recipe) %>% "     
      [12] "  add_model(test_config_14_dummies_spec) "            

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_14_no_dummies_recipe <- "               
       [2] "  recipe(formula = species ~ ., data = penguins) "  
       [3] ""                                                   
       [4] "test_config_14_no_dummies_spec <- "                 
       [5] "  decision_tree() %>% "                             
       [6] "  set_mode(\"classification\") %>% "                
       [7] "  set_engine(\"rpart\") "                           
       [8] ""                                                   
       [9] "test_config_14_no_dummies_workflow <- "             
      [10] "  workflow() %>% "                                  
      [11] "  add_recipe(test_config_14_no_dummies_recipe) %>% "
      [12] "  add_model(test_config_14_no_dummies_spec) "       

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_15_dummies_recipe <- "                        
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) "                             
       [4] ""                                                         
       [5] "test_config_15_dummies_spec <- "                          
       [6] "  boost_tree() %>% "                                      
       [7] "  set_mode(\"regression\") %>% "                          
       [8] "  set_engine(\"xgboost\") "                               
       [9] ""                                                         
      [10] "test_config_15_dummies_workflow <- "                      
      [11] "  workflow() %>% "                                        
      [12] "  add_recipe(test_config_15_dummies_recipe) %>% "         
      [13] "  add_model(test_config_15_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_15_no_dummies_recipe <- "                 
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) "                         
       [4] ""                                                     
       [5] "test_config_15_no_dummies_spec <- "                   
       [6] "  boost_tree() %>% "                                  
       [7] "  set_mode(\"classification\") %>% "                  
       [8] "  set_engine(\"xgboost\") "                           
       [9] ""                                                     
      [10] "test_config_15_no_dummies_workflow <- "               
      [11] "  workflow() %>% "                                    
      [12] "  add_recipe(test_config_15_no_dummies_recipe) %>% "  
      [13] "  add_model(test_config_15_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                           
       [2] ""                                                         
       [3] "test_config_16_dummies_recipe <- "                        
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [5] "  step_zv(all_predictors()) %>% "                         
       [6] "  step_normalize(all_numeric_predictors()) "              
       [7] ""                                                         
       [8] "test_config_16_dummies_spec <- "                          
       [9] "  rule_fit() %>% "                                        
      [10] "  set_mode(\"regression\") %>% "                          
      [11] "  set_engine(\"xrf\") "                                   
      [12] ""                                                         
      [13] "test_config_16_dummies_workflow <- "                      
      [14] "  workflow() %>% "                                        
      [15] "  add_recipe(test_config_16_dummies_recipe) %>% "         
      [16] "  add_model(test_config_16_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                       
       [2] ""                                                     
       [3] "test_config_16_no_dummies_recipe <- "                 
       [4] "  recipe(formula = species ~ ., data = penguins) %>% "
       [5] "  step_zv(all_predictors()) %>% "                     
       [6] "  step_normalize(all_numeric_predictors()) "          
       [7] ""                                                     
       [8] "test_config_16_no_dummies_spec <- "                   
       [9] "  rule_fit() %>% "                                    
      [10] "  set_mode(\"classification\") %>% "                  
      [11] "  set_engine(\"xrf\") "                               
      [12] ""                                                     
      [13] "test_config_16_no_dummies_workflow <- "               
      [14] "  workflow() %>% "                                    
      [15] "  add_recipe(test_config_16_no_dummies_recipe) %>% "  
      [16] "  add_model(test_config_16_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(baguette)"                                                                           
       [2] ""                                                                                            
       [3] "test_config_17_dummies_recipe <- "                                                           
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) "                                       
       [5] ""                                                                                            
       [6] "test_config_17_dummies_spec <- "                                                             
       [7] "  bag_tree(tree_depth = tune(), min_n = tune(), cost_complexity = tune()) %>% "              
       [8] "  set_mode(\"regression\") %>% "                                                             
       [9] "  set_engine(\"rpart\") "                                                                    
      [10] ""                                                                                            
      [11] "test_config_17_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                           
      [13] "  add_recipe(test_config_17_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_17_dummies_spec) "                                                   
      [15] ""                                                                                            
      [16] "set.seed(27246)"                                                                             
      [17] "test_config_17_dummies_tune <-"                                                              
      [18] "  tune_grid(test_config_17_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(baguette)"                                                                              
       [2] ""                                                                                               
       [3] "test_config_17_no_dummies_recipe <- "                                                           
       [4] "  recipe(formula = species ~ ., data = penguins) "                                              
       [5] ""                                                                                               
       [6] "test_config_17_no_dummies_spec <- "                                                             
       [7] "  bag_tree(tree_depth = tune(), min_n = tune(), cost_complexity = tune()) %>% "                 
       [8] "  set_mode(\"classification\") %>% "                                                            
       [9] "  set_engine(\"rpart\") "                                                                       
      [10] ""                                                                                               
      [11] "test_config_17_no_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                              
      [13] "  add_recipe(test_config_17_no_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_17_no_dummies_spec) "                                                   
      [15] ""                                                                                               
      [16] "set.seed(27246)"                                                                                
      [17] "test_config_17_no_dummies_tune <-"                                                              
      [18] "  tune_grid(test_config_17_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_18_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) "                                              
       [3] ""                                                                                               
       [4] "test_config_18_no_dummies_spec <- "                                                             
       [5] "  boost_tree(trees = tune(), min_n = tune()) %>% "                                              
       [6] "  set_mode(\"classification\") %>% "                                                            
       [7] "  set_engine(\"C5.0\") "                                                                        
       [8] ""                                                                                               
       [9] "test_config_18_no_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                              
      [11] "  add_recipe(test_config_18_no_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_18_no_dummies_spec) "                                                   
      [13] ""                                                                                               
      [14] "set.seed(27246)"                                                                                
      [15] "test_config_18_no_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_18_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                                                              
       [2] ""                                                                                            
       [3] "test_config_19_dummies_recipe <- "                                                           
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [5] "  step_zv(all_predictors()) "                                                                
       [6] ""                                                                                            
       [7] "test_config_19_dummies_spec <- "                                                             
       [8] "  cubist_rules(committees = tune(), neighbors = tune()) %>% "                                
       [9] "  set_engine(\"Cubist\") "                                                                   
      [10] ""                                                                                            
      [11] "test_config_19_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                           
      [13] "  add_recipe(test_config_19_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_19_dummies_spec) "                                                   
      [15] ""                                                                                            
      [16] "test_config_19_dummies_grid <- tidyr::crossing(committees = c(1:9, (1:5) * "                 
      [17] "    10), neighbors = c(0, 3, 6, 9)) "                                                        
      [18] ""                                                                                            
      [19] "test_config_19_dummies_tune <- "                                                             
      [20] "  tune_grid(test_config_19_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [21] "    grid = test_config_19_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_20_dummies_recipe <- "                                                                
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "                                            
       [3] ""                                                                                                 
       [4] "test_config_20_dummies_spec <- "                                                                  
       [5] "  bart(trees = tune(), prior_terminal_node_coef = tune(), prior_terminal_node_expo = tune()) %>% "
       [6] "  set_mode(\"regression\") %>% "                                                                  
       [7] "  set_engine(\"dbarts\") "                                                                        
       [8] ""                                                                                                 
       [9] "test_config_20_dummies_workflow <- "                                                              
      [10] "  workflow() %>% "                                                                                
      [11] "  add_recipe(test_config_20_dummies_recipe) %>% "                                                 
      [12] "  add_model(test_config_20_dummies_spec) "                                                        
      [13] ""                                                                                                 
      [14] "set.seed(27246)"                                                                                  
      [15] "test_config_20_dummies_tune <-"                                                                   
      [16] "  tune_grid(test_config_20_dummies_workflow, resamples = stop(\"add your rsample object\"), "     
      [17] "    grid = stop(\"add number of candidate points\"))"                                             

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_20_no_dummies_recipe <- "                                                             
       [2] "  recipe(formula = species ~ ., data = penguins) "                                                
       [3] ""                                                                                                 
       [4] "test_config_20_no_dummies_spec <- "                                                               
       [5] "  bart(trees = tune(), prior_terminal_node_coef = tune(), prior_terminal_node_expo = tune()) %>% "
       [6] "  set_mode(\"classification\") %>% "                                                              
       [7] "  set_engine(\"dbarts\") "                                                                        
       [8] ""                                                                                                 
       [9] "test_config_20_no_dummies_workflow <- "                                                           
      [10] "  workflow() %>% "                                                                                
      [11] "  add_recipe(test_config_20_no_dummies_recipe) %>% "                                              
      [12] "  add_model(test_config_20_no_dummies_spec) "                                                     
      [13] ""                                                                                                 
      [14] "set.seed(27246)"                                                                                  
      [15] "test_config_20_no_dummies_tune <-"                                                                
      [16] "  tune_grid(test_config_20_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "  
      [17] "    grid = stop(\"add number of candidate points\"))"                                             

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
       [1] "test_config_21_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  step_zv(all_predictors()) "                                                                
       [4] ""                                                                                            
       [5] "test_config_21_dummies_spec <- "                                                             
       [6] "  mars(num_terms = tune(), prod_degree = tune(), prune_method = \"none\") %>% "              
       [7] "  set_mode(\"regression\") %>% "                                                             
       [8] "  set_engine(\"earth\") "                                                                    
       [9] ""                                                                                            
      [10] "test_config_21_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                           
      [12] "  add_recipe(test_config_21_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_21_dummies_spec) "                                                   
      [14] ""                                                                                            
      [15] "test_config_21_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) "   
      [16] ""                                                                                            
      [17] "test_config_21_dummies_tune <- "                                                             
      [18] "  tune_grid(test_config_21_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = test_config_21_dummies_grid) "                                                    

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
       [1] "test_config_21_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  step_zv(all_predictors()) "                                                                   
       [4] ""                                                                                               
       [5] "test_config_21_no_dummies_spec <- "                                                             
       [6] "  mars(num_terms = tune(), prod_degree = tune(), prune_method = \"none\") %>% "                 
       [7] "  set_mode(\"classification\") %>% "                                                            
       [8] "  set_engine(\"earth\") "                                                                       
       [9] ""                                                                                               
      [10] "test_config_21_no_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                              
      [12] "  add_recipe(test_config_21_no_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_21_no_dummies_spec) "                                                   
      [14] ""                                                                                               
      [15] "test_config_21_no_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) "   
      [16] ""                                                                                               
      [17] "test_config_21_no_dummies_tune <- "                                                             
      [18] "  tune_grid(test_config_21_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = test_config_21_no_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_22_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  ## Regularization methods sum up functions of the model slope "                            
       [4] "  ## coefficients. Because of this, the predictor variables should be on "                   
       [5] "  ## the same scale. Before centering and scaling the numeric predictors, "                  
       [6] "  ## any predictors with a single unique value are filtered out. "                           
       [7] "  step_zv(all_predictors()) %>% "                                                            
       [8] "  step_normalize(all_numeric_predictors()) "                                                 
       [9] ""                                                                                            
      [10] "test_config_22_dummies_spec <- "                                                             
      [11] "  linear_reg(penalty = tune(), mixture = tune()) %>% "                                       
      [12] "  set_mode(\"regression\") %>% "                                                             
      [13] "  set_engine(\"glmnet\") "                                                                   
      [14] ""                                                                                            
      [15] "test_config_22_dummies_workflow <- "                                                         
      [16] "  workflow() %>% "                                                                           
      [17] "  add_recipe(test_config_22_dummies_recipe) %>% "                                            
      [18] "  add_model(test_config_22_dummies_spec) "                                                   
      [19] ""                                                                                            
      [20] "test_config_22_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), "  
      [21] "    mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) "                                              
      [22] ""                                                                                            
      [23] "test_config_22_dummies_tune <- "                                                             
      [24] "  tune_grid(test_config_22_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [25] "    grid = test_config_22_dummies_grid) "                                                    

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_22_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  ## Regularization methods sum up functions of the model slope "                               
       [4] "  ## coefficients. Because of this, the predictor variables should be on "                      
       [5] "  ## the same scale. Before centering and scaling the numeric predictors, "                     
       [6] "  ## any predictors with a single unique value are filtered out. "                              
       [7] "  step_zv(all_predictors()) %>% "                                                               
       [8] "  step_normalize(all_numeric_predictors()) "                                                    
       [9] ""                                                                                               
      [10] "test_config_22_no_dummies_spec <- "                                                             
      [11] "  multinom_reg(penalty = tune(), mixture = tune()) %>% "                                        
      [12] "  set_mode(\"classification\") %>% "                                                            
      [13] "  set_engine(\"glmnet\") "                                                                      
      [14] ""                                                                                               
      [15] "test_config_22_no_dummies_workflow <- "                                                         
      [16] "  workflow() %>% "                                                                              
      [17] "  add_recipe(test_config_22_no_dummies_recipe) %>% "                                            
      [18] "  add_model(test_config_22_no_dummies_spec) "                                                   
      [19] ""                                                                                               
      [20] "test_config_22_no_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, "                    
      [21] "    length.out = 20), mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) "                               
      [22] ""                                                                                               
      [23] "test_config_22_no_dummies_tune <- "                                                             
      [24] "  tune_grid(test_config_22_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [25] "    grid = test_config_22_no_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_23_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  ## Since dot product calculations are used, the predictor variables "                      
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "                 
       [5] "  ## predictors, any predictors with a single unique value are filtered "                    
       [6] "  ## out. "                                                                                  
       [7] "  step_zv(all_predictors()) %>% "                                                            
       [8] "  step_normalize(all_numeric_predictors()) "                                                 
       [9] ""                                                                                            
      [10] "test_config_23_dummies_spec <- "                                                             
      [11] "  svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% "                      
      [12] "  set_mode(\"regression\") "                                                                 
      [13] ""                                                                                            
      [14] "test_config_23_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                           
      [16] "  add_recipe(test_config_23_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_23_dummies_spec) "                                                   
      [18] ""                                                                                            
      [19] "set.seed(27246)"                                                                             
      [20] "test_config_23_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_23_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_23_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  ## Since dot product calculations are used, the predictor variables "                         
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "                    
       [5] "  ## predictors, any predictors with a single unique value are filtered "                       
       [6] "  ## out. "                                                                                     
       [7] "  step_zv(all_predictors()) %>% "                                                               
       [8] "  step_normalize(all_numeric_predictors()) "                                                    
       [9] ""                                                                                               
      [10] "test_config_23_no_dummies_spec <- "                                                             
      [11] "  svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% "                         
      [12] "  set_mode(\"classification\") "                                                                
      [13] ""                                                                                               
      [14] "test_config_23_no_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                              
      [16] "  add_recipe(test_config_23_no_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_23_no_dummies_spec) "                                                   
      [18] ""                                                                                               
      [19] "set.seed(27246)"                                                                                
      [20] "test_config_23_no_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_23_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_24_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  ## Since dot product calculations are used, the predictor variables "                      
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "                 
       [5] "  ## predictors, any predictors with a single unique value are filtered "                    
       [6] "  ## out. "                                                                                  
       [7] "  step_zv(all_predictors()) %>% "                                                            
       [8] "  step_normalize(all_numeric_predictors()) "                                                 
       [9] ""                                                                                            
      [10] "test_config_24_dummies_spec <- "                                                             
      [11] "  svm_rbf(cost = tune(), rbf_sigma = tune()) %>% "                                           
      [12] "  set_mode(\"regression\") "                                                                 
      [13] ""                                                                                            
      [14] "test_config_24_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                           
      [16] "  add_recipe(test_config_24_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_24_dummies_spec) "                                                   
      [18] ""                                                                                            
      [19] "set.seed(27246)"                                                                             
      [20] "test_config_24_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_24_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_24_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  ## Since dot product calculations are used, the predictor variables "                         
       [4] "  ## should be on the same scale. Before centering and scaling the numeric "                    
       [5] "  ## predictors, any predictors with a single unique value are filtered "                       
       [6] "  ## out. "                                                                                     
       [7] "  step_zv(all_predictors()) %>% "                                                               
       [8] "  step_normalize(all_numeric_predictors()) "                                                    
       [9] ""                                                                                               
      [10] "test_config_24_no_dummies_spec <- "                                                             
      [11] "  svm_rbf(cost = tune(), rbf_sigma = tune()) %>% "                                              
      [12] "  set_mode(\"classification\") "                                                                
      [13] ""                                                                                               
      [14] "test_config_24_no_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                              
      [16] "  add_recipe(test_config_24_no_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_24_no_dummies_spec) "                                                   
      [18] ""                                                                                               
      [19] "set.seed(27246)"                                                                                
      [20] "test_config_24_no_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_24_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_25_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  ## Since distance calculations are used, the predictor variables should "                  
       [4] "  ## be on the same scale. Before centering and scaling the numeric "                        
       [5] "  ## predictors, any predictors with a single unique value are filtered "                    
       [6] "  ## out. "                                                                                  
       [7] "  step_zv(all_predictors()) %>% "                                                            
       [8] "  step_normalize(all_numeric_predictors()) "                                                 
       [9] ""                                                                                            
      [10] "test_config_25_dummies_spec <- "                                                             
      [11] "  nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% "                           
      [12] "  set_mode(\"regression\") %>% "                                                             
      [13] "  set_engine(\"kknn\") "                                                                     
      [14] ""                                                                                            
      [15] "test_config_25_dummies_workflow <- "                                                         
      [16] "  workflow() %>% "                                                                           
      [17] "  add_recipe(test_config_25_dummies_recipe) %>% "                                            
      [18] "  add_model(test_config_25_dummies_spec) "                                                   
      [19] ""                                                                                            
      [20] "set.seed(27246)"                                                                             
      [21] "test_config_25_dummies_tune <-"                                                              
      [22] "  tune_grid(test_config_25_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [23] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_25_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  ## Since distance calculations are used, the predictor variables should "                     
       [4] "  ## be on the same scale. Before centering and scaling the numeric "                           
       [5] "  ## predictors, any predictors with a single unique value are filtered "                       
       [6] "  ## out. "                                                                                     
       [7] "  step_zv(all_predictors()) %>% "                                                               
       [8] "  step_normalize(all_numeric_predictors()) "                                                    
       [9] ""                                                                                               
      [10] "test_config_25_no_dummies_spec <- "                                                             
      [11] "  nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% "                              
      [12] "  set_mode(\"classification\") %>% "                                                            
      [13] "  set_engine(\"kknn\") "                                                                        
      [14] ""                                                                                               
      [15] "test_config_25_no_dummies_workflow <- "                                                         
      [16] "  workflow() %>% "                                                                              
      [17] "  add_recipe(test_config_25_no_dummies_recipe) %>% "                                            
      [18] "  add_model(test_config_25_no_dummies_spec) "                                                   
      [19] ""                                                                                               
      [20] "set.seed(27246)"                                                                                
      [21] "test_config_25_no_dummies_tune <-"                                                              
      [22] "  tune_grid(test_config_25_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [23] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_26_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "                                       
       [3] ""                                                                                            
       [4] "test_config_26_dummies_spec <- "                                                             
       [5] "  gen_additive_mod(select_features = tune(), adjust_deg_free = tune()) %>% "                 
       [6] "  set_mode(\"regression\") %>% "                                                             
       [7] "  set_engine(\"mgcv\") "                                                                     
       [8] ""                                                                                            
       [9] "test_config_26_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                           
      [11] "  add_recipe(test_config_26_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_26_dummies_spec, formula = stop(\"add your gam formula\")) "         
      [13] ""                                                                                            
      [14] "set.seed(27246)"                                                                             
      [15] "test_config_26_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_26_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_26_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) "                                              
       [3] ""                                                                                               
       [4] "test_config_26_no_dummies_spec <- "                                                             
       [5] "  gen_additive_mod(select_features = tune(), adjust_deg_free = tune()) %>% "                    
       [6] "  set_mode(\"classification\") %>% "                                                            
       [7] "  set_engine(\"mgcv\") "                                                                        
       [8] ""                                                                                               
       [9] "test_config_26_no_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                              
      [11] "  add_recipe(test_config_26_no_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_26_no_dummies_spec, formula = stop(\"add your gam formula\")) "         
      [13] ""                                                                                               
      [14] "set.seed(27246)"                                                                                
      [15] "test_config_26_no_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_26_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(plsmod)"                                                                             
       [2] ""                                                                                            
       [3] "test_config_27_dummies_recipe <- "                                                           
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [5] "  step_zv(all_predictors()) %>% "                                                            
       [6] "  step_normalize(all_numeric_predictors()) "                                                 
       [7] ""                                                                                            
       [8] "test_config_27_dummies_spec <- "                                                             
       [9] "  pls(predictor_prop = tune(), num_comp = tune()) %>% "                                      
      [10] "  set_mode(\"regression\") %>% "                                                             
      [11] "  set_engine(\"mixOmics\") "                                                                 
      [12] ""                                                                                            
      [13] "test_config_27_dummies_workflow <- "                                                         
      [14] "  workflow() %>% "                                                                           
      [15] "  add_recipe(test_config_27_dummies_recipe) %>% "                                            
      [16] "  add_model(test_config_27_dummies_spec) "                                                   
      [17] ""                                                                                            
      [18] "set.seed(27246)"                                                                             
      [19] "test_config_27_dummies_tune <-"                                                              
      [20] "  tune_grid(test_config_27_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [21] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(plsmod)"                                                                                
       [2] ""                                                                                               
       [3] "test_config_27_no_dummies_recipe <- "                                                           
       [4] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [5] "  step_zv(all_predictors()) %>% "                                                               
       [6] "  step_normalize(all_numeric_predictors()) "                                                    
       [7] ""                                                                                               
       [8] "test_config_27_no_dummies_spec <- "                                                             
       [9] "  pls(predictor_prop = tune(), num_comp = tune()) %>% "                                         
      [10] "  set_mode(\"classification\") %>% "                                                            
      [11] "  set_engine(\"mixOmics\") "                                                                    
      [12] ""                                                                                               
      [13] "test_config_27_no_dummies_workflow <- "                                                         
      [14] "  workflow() %>% "                                                                              
      [15] "  add_recipe(test_config_27_no_dummies_recipe) %>% "                                            
      [16] "  add_model(test_config_27_no_dummies_spec) "                                                   
      [17] ""                                                                                               
      [18] "set.seed(27246)"                                                                                
      [19] "test_config_27_no_dummies_tune <-"                                                              
      [20] "  tune_grid(test_config_27_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [21] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_28_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  step_zv(all_predictors()) %>% "                                                            
       [4] "  step_normalize(all_numeric_predictors()) "                                                 
       [5] ""                                                                                            
       [6] "test_config_28_dummies_spec <- "                                                             
       [7] "  mlp(hidden_units = tune(), penalty = tune(), epochs = tune()) %>% "                        
       [8] "  set_mode(\"regression\") "                                                                 
       [9] ""                                                                                            
      [10] "test_config_28_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                           
      [12] "  add_recipe(test_config_28_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_28_dummies_spec) "                                                   
      [14] ""                                                                                            
      [15] "set.seed(27246)"                                                                             
      [16] "test_config_28_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_28_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_28_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  step_zv(all_predictors()) %>% "                                                               
       [4] "  step_normalize(all_numeric_predictors()) "                                                    
       [5] ""                                                                                               
       [6] "test_config_28_no_dummies_spec <- "                                                             
       [7] "  mlp(hidden_units = tune(), penalty = tune(), epochs = tune()) %>% "                           
       [8] "  set_mode(\"classification\") "                                                                
       [9] ""                                                                                               
      [10] "test_config_28_no_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                              
      [12] "  add_recipe(test_config_28_no_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_28_no_dummies_spec) "                                                   
      [14] ""                                                                                               
      [15] "set.seed(27246)"                                                                                
      [16] "test_config_28_no_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_28_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_29_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "                                       
       [3] ""                                                                                            
       [4] "test_config_29_dummies_spec <- "                                                             
       [5] "  rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% "                             
       [6] "  set_mode(\"regression\") %>% "                                                             
       [7] "  set_engine(\"ranger\") "                                                                   
       [8] ""                                                                                            
       [9] "test_config_29_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                           
      [11] "  add_recipe(test_config_29_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_29_dummies_spec) "                                                   
      [13] ""                                                                                            
      [14] "set.seed(27246)"                                                                             
      [15] "test_config_29_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_29_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_29_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) "                                              
       [3] ""                                                                                               
       [4] "test_config_29_no_dummies_spec <- "                                                             
       [5] "  rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% "                                
       [6] "  set_mode(\"classification\") %>% "                                                            
       [7] "  set_engine(\"ranger\") "                                                                      
       [8] ""                                                                                               
       [9] "test_config_29_no_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                              
      [11] "  add_recipe(test_config_29_no_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_29_no_dummies_spec) "                                                   
      [13] ""                                                                                               
      [14] "set.seed(27246)"                                                                                
      [15] "test_config_29_no_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_29_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_30_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "                                       
       [3] ""                                                                                            
       [4] "test_config_30_dummies_spec <- "                                                             
       [5] "  decision_tree(tree_depth = tune(), min_n = tune(), cost_complexity = tune()) %>% "         
       [6] "  set_mode(\"regression\") %>% "                                                             
       [7] "  set_engine(\"rpart\") "                                                                    
       [8] ""                                                                                            
       [9] "test_config_30_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                           
      [11] "  add_recipe(test_config_30_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_30_dummies_spec) "                                                   
      [13] ""                                                                                            
      [14] "set.seed(27246)"                                                                             
      [15] "test_config_30_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_30_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_30_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) "                                              
       [3] ""                                                                                               
       [4] "test_config_30_no_dummies_spec <- "                                                             
       [5] "  decision_tree(tree_depth = tune(), min_n = tune(), cost_complexity = tune()) %>% "            
       [6] "  set_mode(\"classification\") %>% "                                                            
       [7] "  set_engine(\"rpart\") "                                                                       
       [8] ""                                                                                               
       [9] "test_config_30_no_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                              
      [11] "  add_recipe(test_config_30_no_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_30_no_dummies_spec) "                                                   
      [13] ""                                                                                               
      [14] "set.seed(27246)"                                                                                
      [15] "test_config_30_no_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_30_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_31_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  step_zv(all_predictors()) "                                                                
       [4] ""                                                                                            
       [5] "test_config_31_dummies_spec <- "                                                             
       [6] "  boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), "     
       [7] "    loss_reduction = tune(), sample_size = tune()) %>% "                                     
       [8] "  set_mode(\"regression\") %>% "                                                             
       [9] "  set_engine(\"xgboost\") "                                                                  
      [10] ""                                                                                            
      [11] "test_config_31_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                           
      [13] "  add_recipe(test_config_31_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_31_dummies_spec) "                                                   
      [15] ""                                                                                            
      [16] "set.seed(27246)"                                                                             
      [17] "test_config_31_dummies_tune <-"                                                              
      [18] "  tune_grid(test_config_31_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_31_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  step_zv(all_predictors()) "                                                                   
       [4] ""                                                                                               
       [5] "test_config_31_no_dummies_spec <- "                                                             
       [6] "  boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), "        
       [7] "    loss_reduction = tune(), sample_size = tune()) %>% "                                        
       [8] "  set_mode(\"classification\") %>% "                                                            
       [9] "  set_engine(\"xgboost\") "                                                                     
      [10] ""                                                                                               
      [11] "test_config_31_no_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                              
      [13] "  add_recipe(test_config_31_no_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_31_no_dummies_spec) "                                                   
      [15] ""                                                                                               
      [16] "set.seed(27246)"                                                                                
      [17] "test_config_31_no_dummies_tune <-"                                                              
      [18] "  tune_grid(test_config_31_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                                                                
       [2] ""                                                                                              
       [3] "test_config_32_dummies_recipe <- "                                                             
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                     
       [5] "  step_zv(all_predictors()) %>% "                                                              
       [6] "  step_normalize(all_numeric_predictors()) "                                                   
       [7] ""                                                                                              
       [8] "test_config_32_dummies_spec <- "                                                               
       [9] "  rule_fit(mtry = tune(), trees = tune(), min_n = tune(), tree_depth = tune(), "               
      [10] "    learn_rate = tune(), loss_reduction = tune(), sample_size = tune(), penalty = tune()) %>% "
      [11] "  set_mode(\"regression\") %>% "                                                               
      [12] "  set_engine(\"xrf\") "                                                                        
      [13] ""                                                                                              
      [14] "test_config_32_dummies_workflow <- "                                                           
      [15] "  workflow() %>% "                                                                             
      [16] "  add_recipe(test_config_32_dummies_recipe) %>% "                                              
      [17] "  add_model(test_config_32_dummies_spec) "                                                     
      [18] ""                                                                                              
      [19] "set.seed(27246)"                                                                               
      [20] "test_config_32_dummies_tune <-"                                                                
      [21] "  tune_grid(test_config_32_dummies_workflow, resamples = stop(\"add your rsample object\"), "  
      [22] "    grid = stop(\"add number of candidate points\"))"                                          

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                                                                 
       [2] ""                                                                                               
       [3] "test_config_32_no_dummies_recipe <- "                                                           
       [4] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [5] "  step_zv(all_predictors()) %>% "                                                               
       [6] "  step_normalize(all_numeric_predictors()) "                                                    
       [7] ""                                                                                               
       [8] "test_config_32_no_dummies_spec <- "                                                             
       [9] "  rule_fit(mtry = tune(), trees = tune(), min_n = tune(), tree_depth = tune(), "                
      [10] "    learn_rate = tune(), loss_reduction = tune(), sample_size = tune(), penalty = tune()) %>% " 
      [11] "  set_mode(\"classification\") %>% "                                                            
      [12] "  set_engine(\"xrf\") "                                                                         
      [13] ""                                                                                               
      [14] "test_config_32_no_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                              
      [16] "  add_recipe(test_config_32_no_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_32_no_dummies_spec) "                                                   
      [18] ""                                                                                               
      [19] "set.seed(27246)"                                                                                
      [20] "test_config_32_no_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_32_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(baguette)"                                    
       [2] ""                                                     
       [3] "test_config_33_dummies_recipe <- "                    
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) "
       [5] ""                                                     
       [6] "test_config_33_dummies_spec <- "                      
       [7] "  bag_tree() %>% "                                    
       [8] "  set_mode(\"regression\") %>% "                      
       [9] "  set_engine(\"rpart\") "                             
      [10] ""                                                     
      [11] "test_config_33_dummies_workflow <- "                  
      [12] "  workflow() %>% "                                    
      [13] "  add_recipe(test_config_33_dummies_recipe) %>% "     
      [14] "  add_model(test_config_33_dummies_spec) "            

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(baguette)"                                  
       [2] ""                                                   
       [3] "test_config_33_no_dummies_recipe <- "               
       [4] "  recipe(formula = species ~ ., data = penguins) "  
       [5] ""                                                   
       [6] "test_config_33_no_dummies_spec <- "                 
       [7] "  bag_tree() %>% "                                  
       [8] "  set_mode(\"classification\") %>% "                
       [9] "  set_engine(\"rpart\") "                           
      [10] ""                                                   
      [11] "test_config_33_no_dummies_workflow <- "             
      [12] "  workflow() %>% "                                  
      [13] "  add_recipe(test_config_33_no_dummies_recipe) %>% "
      [14] "  add_model(test_config_33_no_dummies_spec) "       

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_34_no_dummies_recipe <- "               
       [2] "  recipe(formula = species ~ ., data = penguins) "  
       [3] ""                                                   
       [4] "test_config_34_no_dummies_spec <- "                 
       [5] "  boost_tree() %>% "                                
       [6] "  set_mode(\"classification\") %>% "                
       [7] "  set_engine(\"C5.0\") "                            
       [8] ""                                                   
       [9] "test_config_34_no_dummies_workflow <- "             
      [10] "  workflow() %>% "                                  
      [11] "  add_recipe(test_config_34_no_dummies_recipe) %>% "
      [12] "  add_model(test_config_34_no_dummies_spec) "       

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                           
       [2] ""                                                         
       [3] "test_config_35_dummies_recipe <- "                        
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [5] "  step_zv(all_predictors()) "                             
       [6] ""                                                         
       [7] "test_config_35_dummies_spec <- "                          
       [8] "  cubist_rules() %>% "                                    
       [9] "  set_engine(\"Cubist\") "                                
      [10] ""                                                         
      [11] "test_config_35_dummies_workflow <- "                      
      [12] "  workflow() %>% "                                        
      [13] "  add_recipe(test_config_35_dummies_recipe) %>% "         
      [14] "  add_model(test_config_35_dummies_spec) "                

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_36_dummies_recipe <- "                    
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "
       [3] ""                                                     
       [4] "test_config_36_dummies_spec <- "                      
       [5] "  bart() %>% "                                        
       [6] "  set_mode(\"regression\") %>% "                      
       [7] "  set_engine(\"dbarts\") "                            
       [8] ""                                                     
       [9] "test_config_36_dummies_workflow <- "                  
      [10] "  workflow() %>% "                                    
      [11] "  add_recipe(test_config_36_dummies_recipe) %>% "     
      [12] "  add_model(test_config_36_dummies_spec) "            

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_36_no_dummies_recipe <- "               
       [2] "  recipe(formula = species ~ ., data = penguins) "  
       [3] ""                                                   
       [4] "test_config_36_no_dummies_spec <- "                 
       [5] "  bart() %>% "                                      
       [6] "  set_mode(\"classification\") %>% "                
       [7] "  set_engine(\"dbarts\") "                          
       [8] ""                                                   
       [9] "test_config_36_no_dummies_workflow <- "             
      [10] "  workflow() %>% "                                  
      [11] "  add_recipe(test_config_36_no_dummies_recipe) %>% "
      [12] "  add_model(test_config_36_no_dummies_spec) "       

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_37_dummies_recipe <- "                        
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) "                             
       [4] ""                                                         
       [5] "test_config_37_dummies_spec <- "                          
       [6] "  mars() %>% "                                            
       [7] "  set_mode(\"regression\") %>% "                          
       [8] "  set_engine(\"earth\") "                                 
       [9] ""                                                         
      [10] "test_config_37_dummies_workflow <- "                      
      [11] "  workflow() %>% "                                        
      [12] "  add_recipe(test_config_37_dummies_recipe) %>% "         
      [13] "  add_model(test_config_37_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_37_no_dummies_recipe <- "                 
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) "                         
       [4] ""                                                     
       [5] "test_config_37_no_dummies_spec <- "                   
       [6] "  mars() %>% "                                        
       [7] "  set_mode(\"classification\") %>% "                  
       [8] "  set_engine(\"earth\") "                             
       [9] ""                                                     
      [10] "test_config_37_no_dummies_workflow <- "               
      [11] "  workflow() %>% "                                    
      [12] "  add_recipe(test_config_37_no_dummies_recipe) %>% "  
      [13] "  add_model(test_config_37_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_38_dummies_recipe <- "                        
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                         
       [4] "  step_normalize(all_numeric_predictors()) "              
       [5] ""                                                         
       [6] "test_config_38_dummies_spec <- "                          
       [7] "  linear_reg() %>% "                                      
       [8] "  set_mode(\"regression\") %>% "                          
       [9] "  set_engine(\"glmnet\") "                                
      [10] ""                                                         
      [11] "test_config_38_dummies_workflow <- "                      
      [12] "  workflow() %>% "                                        
      [13] "  add_recipe(test_config_38_dummies_recipe) %>% "         
      [14] "  add_model(test_config_38_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_38_no_dummies_recipe <- "                 
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                     
       [4] "  step_normalize(all_numeric_predictors()) "          
       [5] ""                                                     
       [6] "test_config_38_no_dummies_spec <- "                   
       [7] "  multinom_reg() %>% "                                
       [8] "  set_mode(\"classification\") %>% "                  
       [9] "  set_engine(\"glmnet\") "                            
      [10] ""                                                     
      [11] "test_config_38_no_dummies_workflow <- "               
      [12] "  workflow() %>% "                                    
      [13] "  add_recipe(test_config_38_no_dummies_recipe) %>% "  
      [14] "  add_model(test_config_38_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_39_dummies_recipe <- "                        
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                         
       [4] "  step_normalize(all_numeric_predictors()) "              
       [5] ""                                                         
       [6] "test_config_39_dummies_spec <- "                          
       [7] "  svm_poly() %>% "                                        
       [8] "  set_mode(\"regression\") "                              
       [9] ""                                                         
      [10] "test_config_39_dummies_workflow <- "                      
      [11] "  workflow() %>% "                                        
      [12] "  add_recipe(test_config_39_dummies_recipe) %>% "         
      [13] "  add_model(test_config_39_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_39_no_dummies_recipe <- "                 
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                     
       [4] "  step_normalize(all_numeric_predictors()) "          
       [5] ""                                                     
       [6] "test_config_39_no_dummies_spec <- "                   
       [7] "  svm_poly() %>% "                                    
       [8] "  set_mode(\"classification\") "                      
       [9] ""                                                     
      [10] "test_config_39_no_dummies_workflow <- "               
      [11] "  workflow() %>% "                                    
      [12] "  add_recipe(test_config_39_no_dummies_recipe) %>% "  
      [13] "  add_model(test_config_39_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_40_dummies_recipe <- "                        
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                         
       [4] "  step_normalize(all_numeric_predictors()) "              
       [5] ""                                                         
       [6] "test_config_40_dummies_spec <- "                          
       [7] "  svm_rbf() %>% "                                         
       [8] "  set_mode(\"regression\") "                              
       [9] ""                                                         
      [10] "test_config_40_dummies_workflow <- "                      
      [11] "  workflow() %>% "                                        
      [12] "  add_recipe(test_config_40_dummies_recipe) %>% "         
      [13] "  add_model(test_config_40_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_40_no_dummies_recipe <- "                 
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                     
       [4] "  step_normalize(all_numeric_predictors()) "          
       [5] ""                                                     
       [6] "test_config_40_no_dummies_spec <- "                   
       [7] "  svm_rbf() %>% "                                     
       [8] "  set_mode(\"classification\") "                      
       [9] ""                                                     
      [10] "test_config_40_no_dummies_workflow <- "               
      [11] "  workflow() %>% "                                    
      [12] "  add_recipe(test_config_40_no_dummies_recipe) %>% "  
      [13] "  add_model(test_config_40_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_41_dummies_recipe <- "                        
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                         
       [4] "  step_normalize(all_numeric_predictors()) "              
       [5] ""                                                         
       [6] "test_config_41_dummies_spec <- "                          
       [7] "  nearest_neighbor() %>% "                                
       [8] "  set_mode(\"regression\") %>% "                          
       [9] "  set_engine(\"kknn\") "                                  
      [10] ""                                                         
      [11] "test_config_41_dummies_workflow <- "                      
      [12] "  workflow() %>% "                                        
      [13] "  add_recipe(test_config_41_dummies_recipe) %>% "         
      [14] "  add_model(test_config_41_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_41_no_dummies_recipe <- "                 
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                     
       [4] "  step_normalize(all_numeric_predictors()) "          
       [5] ""                                                     
       [6] "test_config_41_no_dummies_spec <- "                   
       [7] "  nearest_neighbor() %>% "                            
       [8] "  set_mode(\"classification\") %>% "                  
       [9] "  set_engine(\"kknn\") "                              
      [10] ""                                                     
      [11] "test_config_41_no_dummies_workflow <- "               
      [12] "  workflow() %>% "                                    
      [13] "  add_recipe(test_config_41_no_dummies_recipe) %>% "  
      [14] "  add_model(test_config_41_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_42_dummies_recipe <- "                                                  
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "                              
       [3] ""                                                                                   
       [4] "test_config_42_dummies_spec <- "                                                    
       [5] "  gen_additive_mod() %>% "                                                          
       [6] "  set_mode(\"regression\") %>% "                                                    
       [7] "  set_engine(\"mgcv\") "                                                            
       [8] ""                                                                                   
       [9] "test_config_42_dummies_workflow <- "                                                
      [10] "  workflow() %>% "                                                                  
      [11] "  add_recipe(test_config_42_dummies_recipe) %>% "                                   
      [12] "  add_model(test_config_42_dummies_spec, formula = stop(\"add your gam formula\")) "

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_42_no_dummies_recipe <- "                                                  
       [2] "  recipe(formula = species ~ ., data = penguins) "                                     
       [3] ""                                                                                      
       [4] "test_config_42_no_dummies_spec <- "                                                    
       [5] "  gen_additive_mod() %>% "                                                             
       [6] "  set_mode(\"classification\") %>% "                                                   
       [7] "  set_engine(\"mgcv\") "                                                               
       [8] ""                                                                                      
       [9] "test_config_42_no_dummies_workflow <- "                                                
      [10] "  workflow() %>% "                                                                     
      [11] "  add_recipe(test_config_42_no_dummies_recipe) %>% "                                   
      [12] "  add_model(test_config_42_no_dummies_spec, formula = stop(\"add your gam formula\")) "

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(plsmod)"                                          
       [2] ""                                                         
       [3] "test_config_43_dummies_recipe <- "                        
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [5] "  step_zv(all_predictors()) %>% "                         
       [6] "  step_normalize(all_numeric_predictors()) "              
       [7] ""                                                         
       [8] "test_config_43_dummies_spec <- "                          
       [9] "  pls() %>% "                                             
      [10] "  set_mode(\"regression\") %>% "                          
      [11] "  set_engine(\"mixOmics\") "                              
      [12] ""                                                         
      [13] "test_config_43_dummies_workflow <- "                      
      [14] "  workflow() %>% "                                        
      [15] "  add_recipe(test_config_43_dummies_recipe) %>% "         
      [16] "  add_model(test_config_43_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(plsmod)"                                      
       [2] ""                                                     
       [3] "test_config_43_no_dummies_recipe <- "                 
       [4] "  recipe(formula = species ~ ., data = penguins) %>% "
       [5] "  step_zv(all_predictors()) %>% "                     
       [6] "  step_normalize(all_numeric_predictors()) "          
       [7] ""                                                     
       [8] "test_config_43_no_dummies_spec <- "                   
       [9] "  pls() %>% "                                         
      [10] "  set_mode(\"classification\") %>% "                  
      [11] "  set_engine(\"mixOmics\") "                          
      [12] ""                                                     
      [13] "test_config_43_no_dummies_workflow <- "               
      [14] "  workflow() %>% "                                    
      [15] "  add_recipe(test_config_43_no_dummies_recipe) %>% "  
      [16] "  add_model(test_config_43_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_44_dummies_recipe <- "                        
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                         
       [4] "  step_normalize(all_numeric_predictors()) "              
       [5] ""                                                         
       [6] "test_config_44_dummies_spec <- "                          
       [7] "  mlp() %>% "                                             
       [8] "  set_mode(\"regression\") "                              
       [9] ""                                                         
      [10] "test_config_44_dummies_workflow <- "                      
      [11] "  workflow() %>% "                                        
      [12] "  add_recipe(test_config_44_dummies_recipe) %>% "         
      [13] "  add_model(test_config_44_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_44_no_dummies_recipe <- "                 
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) %>% "                     
       [4] "  step_normalize(all_numeric_predictors()) "          
       [5] ""                                                     
       [6] "test_config_44_no_dummies_spec <- "                   
       [7] "  mlp() %>% "                                         
       [8] "  set_mode(\"classification\") "                      
       [9] ""                                                     
      [10] "test_config_44_no_dummies_workflow <- "               
      [11] "  workflow() %>% "                                    
      [12] "  add_recipe(test_config_44_no_dummies_recipe) %>% "  
      [13] "  add_model(test_config_44_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_45_dummies_recipe <- "                    
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "
       [3] ""                                                     
       [4] "test_config_45_dummies_spec <- "                      
       [5] "  rand_forest(trees = 1000) %>% "                     
       [6] "  set_mode(\"regression\") %>% "                      
       [7] "  set_engine(\"ranger\") "                            
       [8] ""                                                     
       [9] "test_config_45_dummies_workflow <- "                  
      [10] "  workflow() %>% "                                    
      [11] "  add_recipe(test_config_45_dummies_recipe) %>% "     
      [12] "  add_model(test_config_45_dummies_spec) "            

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_45_no_dummies_recipe <- "               
       [2] "  recipe(formula = species ~ ., data = penguins) "  
       [3] ""                                                   
       [4] "test_config_45_no_dummies_spec <- "                 
       [5] "  rand_forest(trees = 1000) %>% "                   
       [6] "  set_mode(\"classification\") %>% "                
       [7] "  set_engine(\"ranger\") "                          
       [8] ""                                                   
       [9] "test_config_45_no_dummies_workflow <- "             
      [10] "  workflow() %>% "                                  
      [11] "  add_recipe(test_config_45_no_dummies_recipe) %>% "
      [12] "  add_model(test_config_45_no_dummies_spec) "       

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_46_dummies_recipe <- "                    
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "
       [3] ""                                                     
       [4] "test_config_46_dummies_spec <- "                      
       [5] "  decision_tree() %>% "                               
       [6] "  set_mode(\"regression\") %>% "                      
       [7] "  set_engine(\"rpart\") "                             
       [8] ""                                                     
       [9] "test_config_46_dummies_workflow <- "                  
      [10] "  workflow() %>% "                                    
      [11] "  add_recipe(test_config_46_dummies_recipe) %>% "     
      [12] "  add_model(test_config_46_dummies_spec) "            

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_46_no_dummies_recipe <- "               
       [2] "  recipe(formula = species ~ ., data = penguins) "  
       [3] ""                                                   
       [4] "test_config_46_no_dummies_spec <- "                 
       [5] "  decision_tree() %>% "                             
       [6] "  set_mode(\"classification\") %>% "                
       [7] "  set_engine(\"rpart\") "                           
       [8] ""                                                   
       [9] "test_config_46_no_dummies_workflow <- "             
      [10] "  workflow() %>% "                                  
      [11] "  add_recipe(test_config_46_no_dummies_recipe) %>% "
      [12] "  add_model(test_config_46_no_dummies_spec) "       

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_47_dummies_recipe <- "                        
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) "                             
       [4] ""                                                         
       [5] "test_config_47_dummies_spec <- "                          
       [6] "  boost_tree() %>% "                                      
       [7] "  set_mode(\"regression\") %>% "                          
       [8] "  set_engine(\"xgboost\") "                               
       [9] ""                                                         
      [10] "test_config_47_dummies_workflow <- "                      
      [11] "  workflow() %>% "                                        
      [12] "  add_recipe(test_config_47_dummies_recipe) %>% "         
      [13] "  add_model(test_config_47_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_47_no_dummies_recipe <- "                 
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "
       [3] "  step_zv(all_predictors()) "                         
       [4] ""                                                     
       [5] "test_config_47_no_dummies_spec <- "                   
       [6] "  boost_tree() %>% "                                  
       [7] "  set_mode(\"classification\") %>% "                  
       [8] "  set_engine(\"xgboost\") "                           
       [9] ""                                                     
      [10] "test_config_47_no_dummies_workflow <- "               
      [11] "  workflow() %>% "                                    
      [12] "  add_recipe(test_config_47_no_dummies_recipe) %>% "  
      [13] "  add_model(test_config_47_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                           
       [2] ""                                                         
       [3] "test_config_48_dummies_recipe <- "                        
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "
       [5] "  step_zv(all_predictors()) %>% "                         
       [6] "  step_normalize(all_numeric_predictors()) "              
       [7] ""                                                         
       [8] "test_config_48_dummies_spec <- "                          
       [9] "  rule_fit() %>% "                                        
      [10] "  set_mode(\"regression\") %>% "                          
      [11] "  set_engine(\"xrf\") "                                   
      [12] ""                                                         
      [13] "test_config_48_dummies_workflow <- "                      
      [14] "  workflow() %>% "                                        
      [15] "  add_recipe(test_config_48_dummies_recipe) %>% "         
      [16] "  add_model(test_config_48_dummies_spec) "                

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                       
       [2] ""                                                     
       [3] "test_config_48_no_dummies_recipe <- "                 
       [4] "  recipe(formula = species ~ ., data = penguins) %>% "
       [5] "  step_zv(all_predictors()) %>% "                     
       [6] "  step_normalize(all_numeric_predictors()) "          
       [7] ""                                                     
       [8] "test_config_48_no_dummies_spec <- "                   
       [9] "  rule_fit() %>% "                                    
      [10] "  set_mode(\"classification\") %>% "                  
      [11] "  set_engine(\"xrf\") "                               
      [12] ""                                                     
      [13] "test_config_48_no_dummies_workflow <- "               
      [14] "  workflow() %>% "                                    
      [15] "  add_recipe(test_config_48_no_dummies_recipe) %>% "  
      [16] "  add_model(test_config_48_no_dummies_spec) "         

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(baguette)"                                                                           
       [2] ""                                                                                            
       [3] "test_config_49_dummies_recipe <- "                                                           
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) "                                       
       [5] ""                                                                                            
       [6] "test_config_49_dummies_spec <- "                                                             
       [7] "  bag_tree(tree_depth = tune(), min_n = tune(), cost_complexity = tune()) %>% "              
       [8] "  set_mode(\"regression\") %>% "                                                             
       [9] "  set_engine(\"rpart\") "                                                                    
      [10] ""                                                                                            
      [11] "test_config_49_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                           
      [13] "  add_recipe(test_config_49_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_49_dummies_spec) "                                                   
      [15] ""                                                                                            
      [16] "set.seed(27246)"                                                                             
      [17] "test_config_49_dummies_tune <-"                                                              
      [18] "  tune_grid(test_config_49_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(baguette)"                                                                              
       [2] ""                                                                                               
       [3] "test_config_49_no_dummies_recipe <- "                                                           
       [4] "  recipe(formula = species ~ ., data = penguins) "                                              
       [5] ""                                                                                               
       [6] "test_config_49_no_dummies_spec <- "                                                             
       [7] "  bag_tree(tree_depth = tune(), min_n = tune(), cost_complexity = tune()) %>% "                 
       [8] "  set_mode(\"classification\") %>% "                                                            
       [9] "  set_engine(\"rpart\") "                                                                       
      [10] ""                                                                                               
      [11] "test_config_49_no_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                              
      [13] "  add_recipe(test_config_49_no_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_49_no_dummies_spec) "                                                   
      [15] ""                                                                                               
      [16] "set.seed(27246)"                                                                                
      [17] "test_config_49_no_dummies_tune <-"                                                              
      [18] "  tune_grid(test_config_49_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_50_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) "                                              
       [3] ""                                                                                               
       [4] "test_config_50_no_dummies_spec <- "                                                             
       [5] "  boost_tree(trees = tune(), min_n = tune()) %>% "                                              
       [6] "  set_mode(\"classification\") %>% "                                                            
       [7] "  set_engine(\"C5.0\") "                                                                        
       [8] ""                                                                                               
       [9] "test_config_50_no_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                              
      [11] "  add_recipe(test_config_50_no_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_50_no_dummies_spec) "                                                   
      [13] ""                                                                                               
      [14] "set.seed(27246)"                                                                                
      [15] "test_config_50_no_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_50_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                                                              
       [2] ""                                                                                            
       [3] "test_config_51_dummies_recipe <- "                                                           
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [5] "  step_zv(all_predictors()) "                                                                
       [6] ""                                                                                            
       [7] "test_config_51_dummies_spec <- "                                                             
       [8] "  cubist_rules(committees = tune(), neighbors = tune()) %>% "                                
       [9] "  set_engine(\"Cubist\") "                                                                   
      [10] ""                                                                                            
      [11] "test_config_51_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                           
      [13] "  add_recipe(test_config_51_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_51_dummies_spec) "                                                   
      [15] ""                                                                                            
      [16] "test_config_51_dummies_grid <- tidyr::crossing(committees = c(1:9, (1:5) * "                 
      [17] "    10), neighbors = c(0, 3, 6, 9)) "                                                        
      [18] ""                                                                                            
      [19] "test_config_51_dummies_tune <- "                                                             
      [20] "  tune_grid(test_config_51_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [21] "    grid = test_config_51_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_52_dummies_recipe <- "                                                                
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "                                            
       [3] ""                                                                                                 
       [4] "test_config_52_dummies_spec <- "                                                                  
       [5] "  bart(trees = tune(), prior_terminal_node_coef = tune(), prior_terminal_node_expo = tune()) %>% "
       [6] "  set_mode(\"regression\") %>% "                                                                  
       [7] "  set_engine(\"dbarts\") "                                                                        
       [8] ""                                                                                                 
       [9] "test_config_52_dummies_workflow <- "                                                              
      [10] "  workflow() %>% "                                                                                
      [11] "  add_recipe(test_config_52_dummies_recipe) %>% "                                                 
      [12] "  add_model(test_config_52_dummies_spec) "                                                        
      [13] ""                                                                                                 
      [14] "set.seed(27246)"                                                                                  
      [15] "test_config_52_dummies_tune <-"                                                                   
      [16] "  tune_grid(test_config_52_dummies_workflow, resamples = stop(\"add your rsample object\"), "     
      [17] "    grid = stop(\"add number of candidate points\"))"                                             

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_52_no_dummies_recipe <- "                                                             
       [2] "  recipe(formula = species ~ ., data = penguins) "                                                
       [3] ""                                                                                                 
       [4] "test_config_52_no_dummies_spec <- "                                                               
       [5] "  bart(trees = tune(), prior_terminal_node_coef = tune(), prior_terminal_node_expo = tune()) %>% "
       [6] "  set_mode(\"classification\") %>% "                                                              
       [7] "  set_engine(\"dbarts\") "                                                                        
       [8] ""                                                                                                 
       [9] "test_config_52_no_dummies_workflow <- "                                                           
      [10] "  workflow() %>% "                                                                                
      [11] "  add_recipe(test_config_52_no_dummies_recipe) %>% "                                              
      [12] "  add_model(test_config_52_no_dummies_spec) "                                                     
      [13] ""                                                                                                 
      [14] "set.seed(27246)"                                                                                  
      [15] "test_config_52_no_dummies_tune <-"                                                                
      [16] "  tune_grid(test_config_52_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "  
      [17] "    grid = stop(\"add number of candidate points\"))"                                             

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_53_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  step_zv(all_predictors()) "                                                                
       [4] ""                                                                                            
       [5] "test_config_53_dummies_spec <- "                                                             
       [6] "  mars(num_terms = tune(), prod_degree = tune(), prune_method = \"none\") %>% "              
       [7] "  set_mode(\"regression\") %>% "                                                             
       [8] "  set_engine(\"earth\") "                                                                    
       [9] ""                                                                                            
      [10] "test_config_53_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                           
      [12] "  add_recipe(test_config_53_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_53_dummies_spec) "                                                   
      [14] ""                                                                                            
      [15] "test_config_53_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) "   
      [16] ""                                                                                            
      [17] "test_config_53_dummies_tune <- "                                                             
      [18] "  tune_grid(test_config_53_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = test_config_53_dummies_grid) "                                                    

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_53_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  step_zv(all_predictors()) "                                                                   
       [4] ""                                                                                               
       [5] "test_config_53_no_dummies_spec <- "                                                             
       [6] "  mars(num_terms = tune(), prod_degree = tune(), prune_method = \"none\") %>% "                 
       [7] "  set_mode(\"classification\") %>% "                                                            
       [8] "  set_engine(\"earth\") "                                                                       
       [9] ""                                                                                               
      [10] "test_config_53_no_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                              
      [12] "  add_recipe(test_config_53_no_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_53_no_dummies_spec) "                                                   
      [14] ""                                                                                               
      [15] "test_config_53_no_dummies_grid <- tidyr::crossing(num_terms = 2 * (1:6), prod_degree = 1:2) "   
      [16] ""                                                                                               
      [17] "test_config_53_no_dummies_tune <- "                                                             
      [18] "  tune_grid(test_config_53_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = test_config_53_no_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_54_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  step_zv(all_predictors()) %>% "                                                            
       [4] "  step_normalize(all_numeric_predictors()) "                                                 
       [5] ""                                                                                            
       [6] "test_config_54_dummies_spec <- "                                                             
       [7] "  linear_reg(penalty = tune(), mixture = tune()) %>% "                                       
       [8] "  set_mode(\"regression\") %>% "                                                             
       [9] "  set_engine(\"glmnet\") "                                                                   
      [10] ""                                                                                            
      [11] "test_config_54_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                           
      [13] "  add_recipe(test_config_54_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_54_dummies_spec) "                                                   
      [15] ""                                                                                            
      [16] "test_config_54_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, length.out = 20), "  
      [17] "    mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) "                                              
      [18] ""                                                                                            
      [19] "test_config_54_dummies_tune <- "                                                             
      [20] "  tune_grid(test_config_54_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [21] "    grid = test_config_54_dummies_grid) "                                                    

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_54_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  step_zv(all_predictors()) %>% "                                                               
       [4] "  step_normalize(all_numeric_predictors()) "                                                    
       [5] ""                                                                                               
       [6] "test_config_54_no_dummies_spec <- "                                                             
       [7] "  multinom_reg(penalty = tune(), mixture = tune()) %>% "                                        
       [8] "  set_mode(\"classification\") %>% "                                                            
       [9] "  set_engine(\"glmnet\") "                                                                      
      [10] ""                                                                                               
      [11] "test_config_54_no_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                              
      [13] "  add_recipe(test_config_54_no_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_54_no_dummies_spec) "                                                   
      [15] ""                                                                                               
      [16] "test_config_54_no_dummies_grid <- tidyr::crossing(penalty = 10^seq(-6, -1, "                    
      [17] "    length.out = 20), mixture = c(0.05, 0.2, 0.4, 0.6, 0.8, 1)) "                               
      [18] ""                                                                                               
      [19] "test_config_54_no_dummies_tune <- "                                                             
      [20] "  tune_grid(test_config_54_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [21] "    grid = test_config_54_no_dummies_grid) "                                                    

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_55_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  step_zv(all_predictors()) %>% "                                                            
       [4] "  step_normalize(all_numeric_predictors()) "                                                 
       [5] ""                                                                                            
       [6] "test_config_55_dummies_spec <- "                                                             
       [7] "  svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% "                      
       [8] "  set_mode(\"regression\") "                                                                 
       [9] ""                                                                                            
      [10] "test_config_55_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                           
      [12] "  add_recipe(test_config_55_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_55_dummies_spec) "                                                   
      [14] ""                                                                                            
      [15] "set.seed(27246)"                                                                             
      [16] "test_config_55_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_55_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_55_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  step_zv(all_predictors()) %>% "                                                               
       [4] "  step_normalize(all_numeric_predictors()) "                                                    
       [5] ""                                                                                               
       [6] "test_config_55_no_dummies_spec <- "                                                             
       [7] "  svm_poly(cost = tune(), degree = tune(), scale_factor = tune()) %>% "                         
       [8] "  set_mode(\"classification\") "                                                                
       [9] ""                                                                                               
      [10] "test_config_55_no_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                              
      [12] "  add_recipe(test_config_55_no_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_55_no_dummies_spec) "                                                   
      [14] ""                                                                                               
      [15] "set.seed(27246)"                                                                                
      [16] "test_config_55_no_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_55_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_56_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  step_zv(all_predictors()) %>% "                                                            
       [4] "  step_normalize(all_numeric_predictors()) "                                                 
       [5] ""                                                                                            
       [6] "test_config_56_dummies_spec <- "                                                             
       [7] "  svm_rbf(cost = tune(), rbf_sigma = tune()) %>% "                                           
       [8] "  set_mode(\"regression\") "                                                                 
       [9] ""                                                                                            
      [10] "test_config_56_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                           
      [12] "  add_recipe(test_config_56_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_56_dummies_spec) "                                                   
      [14] ""                                                                                            
      [15] "set.seed(27246)"                                                                             
      [16] "test_config_56_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_56_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_56_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  step_zv(all_predictors()) %>% "                                                               
       [4] "  step_normalize(all_numeric_predictors()) "                                                    
       [5] ""                                                                                               
       [6] "test_config_56_no_dummies_spec <- "                                                             
       [7] "  svm_rbf(cost = tune(), rbf_sigma = tune()) %>% "                                              
       [8] "  set_mode(\"classification\") "                                                                
       [9] ""                                                                                               
      [10] "test_config_56_no_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                              
      [12] "  add_recipe(test_config_56_no_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_56_no_dummies_spec) "                                                   
      [14] ""                                                                                               
      [15] "set.seed(27246)"                                                                                
      [16] "test_config_56_no_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_56_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_57_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  step_zv(all_predictors()) %>% "                                                            
       [4] "  step_normalize(all_numeric_predictors()) "                                                 
       [5] ""                                                                                            
       [6] "test_config_57_dummies_spec <- "                                                             
       [7] "  nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% "                           
       [8] "  set_mode(\"regression\") %>% "                                                             
       [9] "  set_engine(\"kknn\") "                                                                     
      [10] ""                                                                                            
      [11] "test_config_57_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                           
      [13] "  add_recipe(test_config_57_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_57_dummies_spec) "                                                   
      [15] ""                                                                                            
      [16] "set.seed(27246)"                                                                             
      [17] "test_config_57_dummies_tune <-"                                                              
      [18] "  tune_grid(test_config_57_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_57_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  step_zv(all_predictors()) %>% "                                                               
       [4] "  step_normalize(all_numeric_predictors()) "                                                    
       [5] ""                                                                                               
       [6] "test_config_57_no_dummies_spec <- "                                                             
       [7] "  nearest_neighbor(neighbors = tune(), weight_func = tune()) %>% "                              
       [8] "  set_mode(\"classification\") %>% "                                                            
       [9] "  set_engine(\"kknn\") "                                                                        
      [10] ""                                                                                               
      [11] "test_config_57_no_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                              
      [13] "  add_recipe(test_config_57_no_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_57_no_dummies_spec) "                                                   
      [15] ""                                                                                               
      [16] "set.seed(27246)"                                                                                
      [17] "test_config_57_no_dummies_tune <-"                                                              
      [18] "  tune_grid(test_config_57_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_58_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "                                       
       [3] ""                                                                                            
       [4] "test_config_58_dummies_spec <- "                                                             
       [5] "  gen_additive_mod(select_features = tune(), adjust_deg_free = tune()) %>% "                 
       [6] "  set_mode(\"regression\") %>% "                                                             
       [7] "  set_engine(\"mgcv\") "                                                                     
       [8] ""                                                                                            
       [9] "test_config_58_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                           
      [11] "  add_recipe(test_config_58_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_58_dummies_spec, formula = stop(\"add your gam formula\")) "         
      [13] ""                                                                                            
      [14] "set.seed(27246)"                                                                             
      [15] "test_config_58_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_58_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_58_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) "                                              
       [3] ""                                                                                               
       [4] "test_config_58_no_dummies_spec <- "                                                             
       [5] "  gen_additive_mod(select_features = tune(), adjust_deg_free = tune()) %>% "                    
       [6] "  set_mode(\"classification\") %>% "                                                            
       [7] "  set_engine(\"mgcv\") "                                                                        
       [8] ""                                                                                               
       [9] "test_config_58_no_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                              
      [11] "  add_recipe(test_config_58_no_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_58_no_dummies_spec, formula = stop(\"add your gam formula\")) "         
      [13] ""                                                                                               
      [14] "set.seed(27246)"                                                                                
      [15] "test_config_58_no_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_58_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(plsmod)"                                                                             
       [2] ""                                                                                            
       [3] "test_config_59_dummies_recipe <- "                                                           
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [5] "  step_zv(all_predictors()) %>% "                                                            
       [6] "  step_normalize(all_numeric_predictors()) "                                                 
       [7] ""                                                                                            
       [8] "test_config_59_dummies_spec <- "                                                             
       [9] "  pls(predictor_prop = tune(), num_comp = tune()) %>% "                                      
      [10] "  set_mode(\"regression\") %>% "                                                             
      [11] "  set_engine(\"mixOmics\") "                                                                 
      [12] ""                                                                                            
      [13] "test_config_59_dummies_workflow <- "                                                         
      [14] "  workflow() %>% "                                                                           
      [15] "  add_recipe(test_config_59_dummies_recipe) %>% "                                            
      [16] "  add_model(test_config_59_dummies_spec) "                                                   
      [17] ""                                                                                            
      [18] "set.seed(27246)"                                                                             
      [19] "test_config_59_dummies_tune <-"                                                              
      [20] "  tune_grid(test_config_59_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [21] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(plsmod)"                                                                                
       [2] ""                                                                                               
       [3] "test_config_59_no_dummies_recipe <- "                                                           
       [4] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [5] "  step_zv(all_predictors()) %>% "                                                               
       [6] "  step_normalize(all_numeric_predictors()) "                                                    
       [7] ""                                                                                               
       [8] "test_config_59_no_dummies_spec <- "                                                             
       [9] "  pls(predictor_prop = tune(), num_comp = tune()) %>% "                                         
      [10] "  set_mode(\"classification\") %>% "                                                            
      [11] "  set_engine(\"mixOmics\") "                                                                    
      [12] ""                                                                                               
      [13] "test_config_59_no_dummies_workflow <- "                                                         
      [14] "  workflow() %>% "                                                                              
      [15] "  add_recipe(test_config_59_no_dummies_recipe) %>% "                                            
      [16] "  add_model(test_config_59_no_dummies_spec) "                                                   
      [17] ""                                                                                               
      [18] "set.seed(27246)"                                                                                
      [19] "test_config_59_no_dummies_tune <-"                                                              
      [20] "  tune_grid(test_config_59_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [21] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_60_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  step_zv(all_predictors()) %>% "                                                            
       [4] "  step_normalize(all_numeric_predictors()) "                                                 
       [5] ""                                                                                            
       [6] "test_config_60_dummies_spec <- "                                                             
       [7] "  mlp(hidden_units = tune(), penalty = tune(), epochs = tune()) %>% "                        
       [8] "  set_mode(\"regression\") "                                                                 
       [9] ""                                                                                            
      [10] "test_config_60_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                           
      [12] "  add_recipe(test_config_60_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_60_dummies_spec) "                                                   
      [14] ""                                                                                            
      [15] "set.seed(27246)"                                                                             
      [16] "test_config_60_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_60_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_60_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  step_zv(all_predictors()) %>% "                                                               
       [4] "  step_normalize(all_numeric_predictors()) "                                                    
       [5] ""                                                                                               
       [6] "test_config_60_no_dummies_spec <- "                                                             
       [7] "  mlp(hidden_units = tune(), penalty = tune(), epochs = tune()) %>% "                           
       [8] "  set_mode(\"classification\") "                                                                
       [9] ""                                                                                               
      [10] "test_config_60_no_dummies_workflow <- "                                                         
      [11] "  workflow() %>% "                                                                              
      [12] "  add_recipe(test_config_60_no_dummies_recipe) %>% "                                            
      [13] "  add_model(test_config_60_no_dummies_spec) "                                                   
      [14] ""                                                                                               
      [15] "set.seed(27246)"                                                                                
      [16] "test_config_60_no_dummies_tune <-"                                                              
      [17] "  tune_grid(test_config_60_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [18] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_61_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "                                       
       [3] ""                                                                                            
       [4] "test_config_61_dummies_spec <- "                                                             
       [5] "  rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% "                             
       [6] "  set_mode(\"regression\") %>% "                                                             
       [7] "  set_engine(\"ranger\") "                                                                   
       [8] ""                                                                                            
       [9] "test_config_61_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                           
      [11] "  add_recipe(test_config_61_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_61_dummies_spec) "                                                   
      [13] ""                                                                                            
      [14] "set.seed(27246)"                                                                             
      [15] "test_config_61_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_61_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_61_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) "                                              
       [3] ""                                                                                               
       [4] "test_config_61_no_dummies_spec <- "                                                             
       [5] "  rand_forest(mtry = tune(), min_n = tune(), trees = 1000) %>% "                                
       [6] "  set_mode(\"classification\") %>% "                                                            
       [7] "  set_engine(\"ranger\") "                                                                      
       [8] ""                                                                                               
       [9] "test_config_61_no_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                              
      [11] "  add_recipe(test_config_61_no_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_61_no_dummies_spec) "                                                   
      [13] ""                                                                                               
      [14] "set.seed(27246)"                                                                                
      [15] "test_config_61_no_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_61_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_62_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) "                                       
       [3] ""                                                                                            
       [4] "test_config_62_dummies_spec <- "                                                             
       [5] "  decision_tree(tree_depth = tune(), min_n = tune(), cost_complexity = tune()) %>% "         
       [6] "  set_mode(\"regression\") %>% "                                                             
       [7] "  set_engine(\"rpart\") "                                                                    
       [8] ""                                                                                            
       [9] "test_config_62_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                           
      [11] "  add_recipe(test_config_62_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_62_dummies_spec) "                                                   
      [13] ""                                                                                            
      [14] "set.seed(27246)"                                                                             
      [15] "test_config_62_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_62_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_62_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) "                                              
       [3] ""                                                                                               
       [4] "test_config_62_no_dummies_spec <- "                                                             
       [5] "  decision_tree(tree_depth = tune(), min_n = tune(), cost_complexity = tune()) %>% "            
       [6] "  set_mode(\"classification\") %>% "                                                            
       [7] "  set_engine(\"rpart\") "                                                                       
       [8] ""                                                                                               
       [9] "test_config_62_no_dummies_workflow <- "                                                         
      [10] "  workflow() %>% "                                                                              
      [11] "  add_recipe(test_config_62_no_dummies_recipe) %>% "                                            
      [12] "  add_model(test_config_62_no_dummies_spec) "                                                   
      [13] ""                                                                                               
      [14] "set.seed(27246)"                                                                                
      [15] "test_config_62_no_dummies_tune <-"                                                              
      [16] "  tune_grid(test_config_62_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [17] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_63_dummies_recipe <- "                                                           
       [2] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                   
       [3] "  step_zv(all_predictors()) "                                                                
       [4] ""                                                                                            
       [5] "test_config_63_dummies_spec <- "                                                             
       [6] "  boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), "     
       [7] "    loss_reduction = tune(), sample_size = tune()) %>% "                                     
       [8] "  set_mode(\"regression\") %>% "                                                             
       [9] "  set_engine(\"xgboost\") "                                                                  
      [10] ""                                                                                            
      [11] "test_config_63_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                           
      [13] "  add_recipe(test_config_63_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_63_dummies_spec) "                                                   
      [15] ""                                                                                            
      [16] "set.seed(27246)"                                                                             
      [17] "test_config_63_dummies_tune <-"                                                              
      [18] "  tune_grid(test_config_63_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = stop(\"add number of candidate points\"))"                                        

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "test_config_63_no_dummies_recipe <- "                                                           
       [2] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [3] "  step_zv(all_predictors()) "                                                                   
       [4] ""                                                                                               
       [5] "test_config_63_no_dummies_spec <- "                                                             
       [6] "  boost_tree(trees = tune(), min_n = tune(), tree_depth = tune(), learn_rate = tune(), "        
       [7] "    loss_reduction = tune(), sample_size = tune()) %>% "                                        
       [8] "  set_mode(\"classification\") %>% "                                                            
       [9] "  set_engine(\"xgboost\") "                                                                     
      [10] ""                                                                                               
      [11] "test_config_63_no_dummies_workflow <- "                                                         
      [12] "  workflow() %>% "                                                                              
      [13] "  add_recipe(test_config_63_no_dummies_recipe) %>% "                                            
      [14] "  add_model(test_config_63_no_dummies_spec) "                                                   
      [15] ""                                                                                               
      [16] "set.seed(27246)"                                                                                
      [17] "test_config_63_no_dummies_tune <-"                                                              
      [18] "  tune_grid(test_config_63_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [19] "    grid = stop(\"add number of candidate points\"))"                                           

---

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                                                                
       [2] ""                                                                                              
       [3] "test_config_64_dummies_recipe <- "                                                             
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) %>% "                                     
       [5] "  step_zv(all_predictors()) %>% "                                                              
       [6] "  step_normalize(all_numeric_predictors()) "                                                   
       [7] ""                                                                                              
       [8] "test_config_64_dummies_spec <- "                                                               
       [9] "  rule_fit(mtry = tune(), trees = tune(), min_n = tune(), tree_depth = tune(), "               
      [10] "    learn_rate = tune(), loss_reduction = tune(), sample_size = tune(), penalty = tune()) %>% "
      [11] "  set_mode(\"regression\") %>% "                                                               
      [12] "  set_engine(\"xrf\") "                                                                        
      [13] ""                                                                                              
      [14] "test_config_64_dummies_workflow <- "                                                           
      [15] "  workflow() %>% "                                                                             
      [16] "  add_recipe(test_config_64_dummies_recipe) %>% "                                              
      [17] "  add_model(test_config_64_dummies_spec) "                                                     
      [18] ""                                                                                              
      [19] "set.seed(27246)"                                                                               
      [20] "test_config_64_dummies_tune <-"                                                                
      [21] "  tune_grid(test_config_64_dummies_workflow, resamples = stop(\"add your rsample object\"), "  
      [22] "    grid = stop(\"add number of candidate points\"))"                                          

---

    Code
      no_dummy_clip_template(model, prefix, verbose, tune)
    Message <cliMessage>
      v code is on the clipboard.
    Output
       [1] "library(rules)"                                                                                 
       [2] ""                                                                                               
       [3] "test_config_64_no_dummies_recipe <- "                                                           
       [4] "  recipe(formula = species ~ ., data = penguins) %>% "                                          
       [5] "  step_zv(all_predictors()) %>% "                                                               
       [6] "  step_normalize(all_numeric_predictors()) "                                                    
       [7] ""                                                                                               
       [8] "test_config_64_no_dummies_spec <- "                                                             
       [9] "  rule_fit(mtry = tune(), trees = tune(), min_n = tune(), tree_depth = tune(), "                
      [10] "    learn_rate = tune(), loss_reduction = tune(), sample_size = tune(), penalty = tune()) %>% " 
      [11] "  set_mode(\"classification\") %>% "                                                            
      [12] "  set_engine(\"xrf\") "                                                                         
      [13] ""                                                                                               
      [14] "test_config_64_no_dummies_workflow <- "                                                         
      [15] "  workflow() %>% "                                                                              
      [16] "  add_recipe(test_config_64_no_dummies_recipe) %>% "                                            
      [17] "  add_model(test_config_64_no_dummies_spec) "                                                   
      [18] ""                                                                                               
      [19] "set.seed(27246)"                                                                                
      [20] "test_config_64_no_dummies_tune <-"                                                              
      [21] "  tune_grid(test_config_64_no_dummies_workflow, resamples = stop(\"add your rsample object\"), "
      [22] "    grid = stop(\"add number of candidate points\"))"                                           

