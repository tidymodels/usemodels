# all model templates with clipboard

    Code
      dummy_clip_template(model, prefix, verbose, tune)
    Message
      v code is on the clipboard.
    Output
       [1] "library(baguette)"                                    
       [2] ""                                                     
       [3] "test_config_1_dummies_recipe <- "                     
       [4] "  recipe(formula = body_mass_g ~ ., data = penguins) "
       [5] ""                                                     
       [6] "test_config_1_dummies_spec <- "                       
       [7] "  bag_tree() |> "                                     
       [8] "  set_mode(\"regression\") |> "                       
       [9] "  set_engine(\"rpart\") "                             
      [10] ""                                                     
      [11] "test_config_1_dummies_workflow <- "                   
      [12] "  workflow() |> "                                     
      [13] "  add_recipe(test_config_1_dummies_recipe) |> "       
      [14] "  add_model(test_config_1_dummies_spec) "             

