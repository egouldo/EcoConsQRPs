generate_synthetic_survey_data <- function(n_participants = 1000) {
  # Generate Synthetic Dataset for Data Management Plan
  
  ## QRP Key/ID Dataset
  QRP_key <- 
          data_frame(method = as.factor(rep(c("Bayesian", 
                                              "SDM", 
                                              "Multi-models", 
                                              "Fieldwork"), each = 10)),
                     QRP_key = as.factor(rep(c(1:10), times = 4)),
                     QRP_description = wakefield::lorem_ipsum(n = 40))
  
  ## Survey Results Dataset
  gen_expert_methods <- function(){ # returns a vector of randomly varying lengths
          n_areas <- wakefield::age(n = 1, x = 1:4)
          expert_method <- wakefield::answer(n = n_areas, x = c("Bayesian", 
                                               "SDM", 
                                               "Multi-models", 
                                               "Fieldwork"))
          return(as.factor(unique(expert_method)))
  }
  
  gen_impact_values <- function(ave = 20, s.d. = 30){
          sd_val <- abs(rnorm(n = 1, mean = s.d., 5))
          impact_bounds <- abs(c(ave - sd_val, ave + sd_val))
          return(impact_bounds)
  }
  
  # Per response questions
  survey_responses <- 
          tibble(response_id = 1:n_participants, 
                 date = wakefield::date_stamp(n = n_participants),
                 expert_method = replicate(n_participants, gen_expert_methods()),
                 non_expert_method = replicate(n_participants, gen_expert_methods())
          )
  # Per QRP questions
  survey_responses <- 
          dplyr::bind_rows({
                  survey_responses %>% 
                          unnest(expert_method) %>%
                          dplyr::left_join(., QRP_key, by = c("expert_method" = "method")) %>%
                          dplyr::group_by(response_id, expert_method) %>%
                          dplyr::mutate(self_report =  wakefield::answer(n = last(QRP_key)),
                                        prevalence_estimate = abs(rnorm(n = 10, mean = 50, sd = 20)),
                                        value_judgment = wakefield::answer(n = last(QRP_key), c("Yes", "No", "Depends")),
                                        comments = wakefield::lorem_ipsum(n = last(QRP_key)),
                                        consequence_best = list(gen_impact_values()),
                                        consequence_worst = list(gen_impact_values()),
                                        consequence_average = list(gen_impact_values()),
                                        expert_status = "expert") %>%
                          ungroup() %>%
                          dplyr::rename(method = expert_method)},
                  
                  {survey_responses %>% 
                                  unnest(non_expert_method) %>%
                                  dplyr::left_join(., QRP_key, by = c("non_expert_method" = "method")) %>%
                                  dplyr::group_by(response_id, non_expert_method) %>%
                                  dplyr::mutate(self_report =  wakefield::answer(n = last(QRP_key)),
                                                prevalence_estimate = abs(rnorm(n = 10, mean = 50, sd = 20)),
                                                value_judgment = wakefield::answer(n = last(QRP_key), c("Yes", "No", "Depends")),
                                                comments = wakefield::lorem_ipsum(n = last(QRP_key)),
                                                consequence_best = list(gen_impact_values()),
                                                consequence_worst = list(gen_impact_values()),
                                                consequence_average = list(gen_impact_values()),
                                                expert_status = "non_expert") %>%
                                  ungroup() %>%
                                  dplyr::rename(method = non_expert_method)}
          )
}


