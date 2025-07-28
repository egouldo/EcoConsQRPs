# Prepare Data for Visualisation

qrp_table_data <- 
        qrp_data %>% 
        mutate(model_phase = str_split(model_phase, ", "), 
               model_subphase = str_split(model_subphase, ", ")) %>% 
        rowwise() %>% # Ensure we are working with each row independently
        arrange(model_phase, model_subphase) %>% 
        filter(length(model_phase) > 1 && length(model_phase) == length(model_subphase) | length(model_phase) == 1) %>%  # temporary hack to ensure equal lengths
        unnest(c(model_phase, model_subphase)) %>% 
        group_by(practice_coded) %>% 
        unite(col = model_phase_subphase, model_phase, model_subphase, sep = " - ") %>% 
        mutate(values = TRUE) %>% 
        pivot_wider(names_from = model_phase_subphase, 
                    values_from = values)


        
