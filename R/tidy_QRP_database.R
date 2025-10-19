# Read and Tidy Database Data

tidy_QRP_database <- function(database_path) {
        qrp_data <- readr::read_csv(database_path) %>% 
                janitor::clean_names() %>% 
                # rename(source = source_15) %>% 
                # filter(source_1 != "Internal") %>% 
                # select(-source_1, 
                #        -source_file#, 
                #        # -ends_with("_source")
                #        ) %>% 
                drop_na(model_phase, target, practice_coded) %>% 
                mutate(across(ends_with("source"), 
                              ~ str_remove(.x, "\\[") %>% 
                                      str_remove("\\]") %>% 
                                      str_remove("source_notes/")),
                       across(-include, ~ stringr::str_trim(.x))) 
        return(qrp_data)
}
