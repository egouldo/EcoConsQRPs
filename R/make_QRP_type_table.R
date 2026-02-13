library(gt)
library(tidyverse)
library(gtExtras)
library(gluedown)

QRP_definition_table <-
  readr::read_delim(
    file = here::here("ms/Table_3.md"),
    delim = "|",
    trim_ws = TRUE,
    col_select = c(
      class,
      definition,
      example_scenarios,
      description,
      formal_description
    ),
    skip_empty_rows = TRUE
  ) %>%
  slice(-1) %>%
  group_by(class, definition) %>%
  reframe(
    example_scenarios = str_split(example_scenarios, "- "),
    description, formal_description
  ) %>%
  rowwise() %>%
  mutate(
    example_scenarios = list(str_subset(example_scenarios, ".+") %>%
      gluedown::md_bullet() %>%
      str_flatten("\n")),
    class = trimws(class),
    class = factor(class, levels = c("**Selective Reporting** Choosing to report only certain analyses, models, metrics, model results or comparisons that yield favourable results or desired conclusions without disclosing the full range of analyses performed.", "**Model Fishing**", "**S-hacking** Statistic-hacking", "**Sample Curation**", "**HARKing** Hypothesising After Results are Known", "**Overhyping**"))
  ) %>%
  unnest(example_scenarios) %>%
  arrange(class) %>%
  gt(
    rowname_col = c("definition"),
    groupname_col = "class",
    # row_group_as_column = TRUE,
    process_md = TRUE,
  ) %>%
  gt::fmt_markdown(columns = (everything())) %>%
  gt::cols_merge(
    columns = c("class", "definition"),
    rows = 1
  ) %>%
  gt::cols_label(
    example_scenarios = "Example Scenarios",
    description = "Description",
    formal_description = "Formal Description"
  ) %>%
  gt::cols_align("right", formal_description) %>%
  gt::tab_stubhead(label = "QRP Class and Definition") %>%
  gtExtras::gt_theme_538(quiet = TRUE) %>%
  gt::tab_style(
    style = cell_text(v_align = "top"),
    locations = cells_body(columns = everything())
  ) %>%
  gt::tab_style(
    style = cell_text(v_align = "top", style = "italic"),
    locations = cells_stub()
  ) %>%
  gt::cols_width(example_scenarios ~ gt::px(400)) %>%
  gt::cols_merge(columns = contains("description"), 
                 rows = 7, pattern = "{1}",hide_columns = FALSE) %>%
  gt::sub_missing() %>% 
        opt_vertical_padding(scale = 0.1)

# gtExtras::gtsave_extra(QRP_definition_table, 
#                        path = here::here("tables"), 
#                        filename =  "QRP_definition_table.png")

                       # expand = c(0,200,0,0),
                       # zoom = 2,
                     

# gt::gtsave(QRP_definition_table, path = here::here("tables/"), filename = "QRP_definition_table.html")
# 
# webshot2::webshot(here::here("tables", "QRP_definition_table.html"), 
#                   here::here("tables", "QRP_definition_table.png"),
#                   vheight = 1000,
#                   vwidth = 900)
# 
# magick::image_read(here::here("tables", "QRP_definition_table.png"))
