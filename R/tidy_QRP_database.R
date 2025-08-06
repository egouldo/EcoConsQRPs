# Read and Tidy Database Data

tidy_QRP_database <- function(database_path) {
        qrp_data <- readr::read_csv(database_path) %>% 
                janitor::clean_names() %>% 
                rename(source = source_14) %>% 
                filter(source_1 != "Internal") %>% 
                select(-source_1, -source_file, -ends_with("_source")) %>% 
                drop_na(model_phase, target, practice_coded) %>% 
                mutate(source = str_remove(source, "\\[") %>% 
                               str_remove("\\]") %>% 
                               str_remove("source_notes/"))
        
        return(qrp_data)
}
