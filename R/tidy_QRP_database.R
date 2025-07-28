# Read and Tidy Database Data

library(tidyverse)
library(here)
library(janitor)

qrp_data <- readr::read_csv(here::here("data", "QRP_database.csv")) %>% 
        janitor::clean_names() %>% 
        rename(source = source_13) %>% 
        filter(source_1 != "Internal") %>% 
        select(-source_1, -source_file, -ends_with("_source")) %>% 
        drop_na(model_phase, target, practice_coded) %>% 
        mutate(source = str_remove(source, "\\[") %>% 
                       str_remove("\\]") %>% 
                       str_remove("source_notes/"))
