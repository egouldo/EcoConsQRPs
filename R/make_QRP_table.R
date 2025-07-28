# Make gt:: table with qrp_table_data

library(gt)

qrp_table_data %>% 
        ungroup %>% 
        select(-reason_coded) %>% 
        dplyr::relocate(ends_with("_coded"), source, target, starts_with("Problem"), starts_with("Define"), starts_with("Data"), contains("Construction"), contains("Evaluation"), everything()) %>% 
        gt() %>% 
        tab_spanner("Model Construction", 
                    columns = starts_with("Model Construction")) %>%
        tab_spanner("Data", 
                    columns = starts_with("Data")) %>%
        tab_spanner("Model Evaluation",
                    columns = starts_with("Model Evaluation")) %>%
        tab_spanner("Model Application",
                    columns = starts_with("Model Application")) %>% 
        tab_spanner("Problem Definition",
                    columns = starts_with("Problem Definition")) %>%
        tab_spanner("Problem Formulation",
                    columns = starts_with("Problem Formulation")) %>%
        tab_spanner("Model Deployment",
                    columns = starts_with("Model Deployment")) %>% 
        tab_spanner("Define Conceptual Model",
                    columns = starts_with("Define Conceptual Model")) %>% 
        gt::cols_label_with(columns = starts_with("Model Construction"),
                            fn = function(x) {
                              gsub("Model Construction - ", "", x)
                            }) %>%
        gt::cols_label_with(columns = starts_with("Data"),
                            fn = function(x) {
                              gsub("Data - ", "", x)
                            }) %>%
        gt::cols_label_with(columns = starts_with("Model Evaluation"),
                            fn = function(x) {
                              gsub("Model Evaluation - ", "", x)
                            }) %>%
        gt::cols_label_with(columns = starts_with("Model Application"),
                            fn = function(x) {
                              gsub("Model Application - ", "", x)
                            }) %>%
        gt::cols_label_with(columns = starts_with("Problem Definition"),
                            fn = function(x) {
                              gsub("Problem Definition - ", "", x)
                            }) %>% 
        gt::cols_label_with(columns = starts_with("Define Conceptual Model"),
                            fn = function(x) {
                                    gsub("Define Conceptual Model - ", "", x)
                            }) %>% 
        gt::cols_label(.list = list(
                practice_coded = "Practice",
                target = "Target",
                source = "Source"
                # model_phase = "Model Phase",
                # model_subphase = "Model Subphase",
                # reason_coded = "Reason for QRP"
        )) %>% 
        gt::sub_missing(
                columns = -ends_with("_coded"),
                rows = everything(),
                missing_text = ""
        ) 
