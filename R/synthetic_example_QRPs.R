library(tidyverse)
library(easystats)
library(patchwork)
library(latex2exp)
library(equatiomatic)

set.seed(123)

# Generate synthetic data
n <- 100
habitat_quality <- runif(n, 0, 10)
# True relationship with some noise
abundance <- 2 + 1.5 * habitat_quality + rnorm(n, 0, 2)

data <- tibble(
        habitat_quality = habitat_quality,
        abundance = abundance
)

# Define management scenarios
management_scenarios <- tibble(
        action = c("Action A", "Action B"),
        habitat_quality_mean = c(6.0, 6.5),  # Small difference initially
        habitat_quality_sd = c(0.5, 0.5)
)

# Stage 1: Initial simple model (defensible)
model_initial <- lm(abundance ~ habitat_quality, data = data)

# Predict for management scenarios
pred_initial <- management_scenarios %>%
        rowwise() %>%
        mutate(
                habitat_values = list(rnorm(1000, habitat_quality_mean, habitat_quality_sd)),
                predictions = list(predict(model_initial, 
                                           newdata = tibble(habitat_quality = habitat_values), 
                                           interval = "prediction")),
                pred_mean = mean(predictions[,1]),
                pred_lower = quantile(predictions[,1], 0.025),
                pred_upper = quantile(predictions[,1], 0.975)
        ) %>%
        select(action, pred_mean, pred_lower, pred_upper) %>%
        mutate(model = "Initial Model", 
               stage = "Stage 1: A Priori Model")

# Stage 2: Overfitted model (model fishing)
# Add polynomial and interaction terms to artificially reduce uncertainty
model_overfitted <- lm(abundance ~ poly(habitat_quality, 3) + 
                               I(habitat_quality^2 * (habitat_quality > 5)), 
                       data = data)

pred_overfitted <- management_scenarios %>%
        rowwise() %>%
        mutate(
                habitat_values = list(rnorm(1000, habitat_quality_mean, habitat_quality_sd)),
                predictions = list(predict(model_overfitted, 
                                           newdata = tibble(habitat_quality = habitat_values), 
                                           interval = "prediction")),
                pred_mean = mean(predictions[,1]),
                pred_lower = quantile(predictions[,1], 0.025),
                pred_upper = quantile(predictions[,1], 0.975)
        ) %>%
        select(action, pred_mean, pred_lower, pred_upper) %>%
        mutate(model = "Overfitted Model", stage = "Stage 2: Model Fishing")

# Stage 3: Scenario hacking - artificially increase difference
management_scenarios_hacked <- management_scenarios %>%
        mutate(
                habitat_quality_mean = case_when(
                        action == "Action A" ~ 5.5,  # Artificially lowered
                        action == "Action B" ~ 7.5   # Artificially raised
                )
        )

pred_hacked <- management_scenarios_hacked %>%
        rowwise() %>%
        mutate(
                habitat_values = list(rnorm(1000, habitat_quality_mean, habitat_quality_sd)),
                predictions = list(predict(model_initial, 
                                           newdata = tibble(habitat_quality = habitat_values), 
                                           interval = "prediction")),
                pred_mean = mean(predictions[,1]),
                pred_lower = quantile(predictions[,1], 0.025),
                pred_upper = quantile(predictions[,1], 0.975)
        ) %>%
        select(action, pred_mean, pred_lower, pred_upper) %>%
        mutate(
                model = "Scenario Hacked", 
                stage = "Stage 3: Scenario Hacking",
                # Add color mapping for hacked actions
                action_color = case_when(
                        action == "Action A" ~ "#0072B2",  # Orange for hacked Action A
                        action == "Action B" ~ "#2C5F41"   # Purple for hacked Action B
                )
        )

# Combine results
all_predictions <- bind_rows(
        pred_initial %>% mutate(action_color = case_when(
                action == "Action A" ~ "#56B4E9",
                action == "Action B" ~ "#009E73"
        )),
        pred_overfitted %>% mutate(action_color = case_when(
                action == "Action A" ~ "#56B4E9", 
                action == "Action B" ~ "#009E73"
        )),
        pred_hacked
) %>%
        mutate(stage = factor(stage, levels = c("Stage 1: A Priori Model", 
                                                "Stage 2: Model Fishing", 
                                                "Stage 3: Scenario Hacking")))

# Plot Coefficients
# First, we need to generate the full prediction distributions
pred_distributions <- bind_rows(
        # Stage 1: Initial model
        management_scenarios %>%
                rowwise() %>%
                mutate(
                        habitat_values = list(rnorm(1000, habitat_quality_mean, habitat_quality_sd)),
                        predictions = list(predict(model_initial, 
                                                   newdata = tibble(habitat_quality = habitat_values))),
                        stage = "Stage 1: A Priori Model"
                ) %>%
                unnest(predictions) %>%
                select(action, predictions, stage),
        
        # Stage 2: Overfitted model  
        management_scenarios %>%
                rowwise() %>%
                mutate(
                        habitat_values = list(rnorm(1000, habitat_quality_mean, habitat_quality_sd)),
                        predictions = list(predict(model_overfitted, 
                                                   newdata = tibble(habitat_quality = habitat_values))),
                        stage = "Stage 2: Model Fishing"
                ) %>%
                unnest(predictions) %>%
                select(action, predictions, stage),
        
        # Stage 3: Scenario hacked
        management_scenarios_hacked %>%
                rowwise() %>%
                mutate(
                        habitat_values = list(rnorm(1000, habitat_quality_mean, habitat_quality_sd)),
                        predictions = list(predict(model_initial, 
                                                   newdata = tibble(habitat_quality = habitat_values))),
                        stage = "Stage 3: Scenario Hacking"
                ) %>%
                unnest(predictions) %>%
                select(action, predictions, stage)
) %>%
        mutate(
                stage = factor(stage, levels = c("Stage 1: A Priori Model", 
                                                 "Stage 2: Model Fishing", 
                                                 "Stage 3: Scenario Hacking")),
                action_color = case_when(
                        stage %in% c("Stage 1: A Priori Model", "Stage 2: Model Fishing") & action == "Action A" ~ "#56B4E9",
                        stage %in% c("Stage 1: A Priori Model", "Stage 2: Model Fishing") & action == "Action B" ~ "#009E73",
                        stage == "Stage 3: Scenario Hacking" & action == "Action A" ~ "#0072B2",
                        stage == "Stage 3: Scenario Hacking" & action == "Action B" ~ "#2C5F41"
                )
        )

p1 <- ggplot(pred_distributions, aes(x = action, y = predictions)) +
        geom_violin(aes(fill = I(action_color)), alpha = 0.7, trim = FALSE) +
        geom_boxplot(aes(color = I(action_color)), width = 0.1, alpha = 0.8) +
        stat_summary(aes(color = I(action_color)), fun = mean, geom = "point", 
                     size = 3, shape = 18) +
        facet_wrap(~stage, ncol = 3) +
        labs(
                y = "Predicted Species Abundance",
                x = "Management Action"
        ) +
        theme_minimal() +
        theme(
                plot.title = element_text(size = 14, face = "bold"),
                plot.subtitle = element_text(size = 12),
                axis.text.x = element_text(angle = 45, hjust = 1),
                legend.position = "none"
        )


# Calculate effect sizes at each stage
effect_sizes <- all_predictions %>%
        select(stage, action, pred_mean) %>%
        pivot_wider(names_from = action, values_from = pred_mean) %>%
        mutate(
                difference = `Action B` - `Action A`,
                effect_size = difference / 2  # Rough standardization
        )

cat("\nEffect sizes by stage:\n")
print(effect_sizes)

# Model fit statistics
cat("\nModel comparison statistics:\n")
cat("Initial model R-squared:", summary(model_initial)$r.squared, "\n")
cat("Overfitted model R-squared:", summary(model_overfitted)$r.squared, "\n")
cat("Initial model AIC:", AIC(model_initial), "\n")
cat("Overfitted model AIC:", AIC(model_overfitted), "\n")

# Model comparison plot showing overfitting with management actions
model_comparison <- tibble(
        habitat_quality = seq(0, 10, 0.1)
) %>%
        mutate(
                initial_pred = predict(model_initial, newdata = .),
                overfitted_pred = predict(model_overfitted, newdata = .)
        ) %>%
        pivot_longer(cols = c(initial_pred, overfitted_pred), 
                     names_to = "model_type", values_to = "prediction") %>%
        mutate(
                model_type = case_when(
                        model_type == "initial_pred" ~ "Initial Model",
                        model_type == "overfitted_pred" ~ "Overfitted Model"
                )
         )

# eq_m_initial <- equatiomatic::extract_eq(model_initial)
# eq_m_overfitted <- equatiomatic::extract_eq(model_overfitted, use_coefs = TRUE,ital_vars = TRUE,) %>% 
#         gsub("\\\\_", "-", .) %>% 
#         as.character() %>% 
#         paste("$", ., "$", sep = "")

p3 <- ggplot() +
        geom_point(data = data, 
                   aes(x = habitat_quality, y = abundance), 
                   alpha = 0.6, 
                   color = "grey50") +
        geom_line(data = model_comparison, 
                  aes(x = habitat_quality, y = prediction, 
                      color = model_type, linetype = model_type), 
                  size = 1) +
        # Initial management actions
        geom_vline(xintercept = management_scenarios %>% 
                           pluck("habitat_quality_mean", 1), 
                   linetype = "solid", 
                   color = "#56B4E9", 
                   size = 1, 
                   alpha = 0.7) +
        geom_vline(xintercept = management_scenarios %>% 
                           pluck("habitat_quality_mean", 2), 
                   linetype = "solid", color = "#009E73", 
                   size = 1, 
                   alpha = 0.7) +
        # Scenario hacked actions  
        geom_vline(xintercept = management_scenarios_hacked %>% 
                           pluck("habitat_quality_mean", 1), 
                   linetype = "dashed", 
                   color = "#0072B2", 
                   size = 1.2) +
        geom_vline(xintercept = management_scenarios_hacked %>% 
                           pluck("habitat_quality_mean", 2), 
                   linetype = "dashed", 
                   color = "#2C5F41", 
                   size = 1.2) +
        # Arrows showing the manipulation
        annotate("segment", 
                 x = management_scenarios %>% 
                         pluck("habitat_quality_mean", 1), 
                 xend = management_scenarios_hacked %>% 
                         pluck("habitat_quality_mean", 1), 
                 y = 16, 
                 yend = 16, 
                 arrow = arrow(length = unit(0.3, "cm")), 
                 color = "#0072B2", 
                 size = 1) +
        annotate("segment", 
                 x = management_scenarios %>% 
                         pluck("habitat_quality_mean", 2), 
                 xend = management_scenarios_hacked %>% 
                         pluck("habitat_quality_mean", 2), 
                 y = 16, 
                 yend = 16, 
                 arrow = arrow(length = unit(0.3, "cm")), 
                 color = "#2C5F41", 
                 size = 1) +
        labs(
                # title = "Model Fishing and Scenario Hacking",
                # subtitle = TeX(eq_m_overfitted),
                x = "Habitat Quality",
                y = "Predicted Species Abundance",
        ) +
        theme_minimal() +
        theme(
                legend.position = c(0.99, 0.01),  # Lower right corner
                legend.justification = c(1, 0),   # Anchor point
                legend.background = element_rect(fill = "white", 
                                                 color = "black", 
                                                 size = 0.5),
                legend.margin = margin(5, 5, 5, 5)
        ) +
        scale_color_manual("Model Version", 
                           values = c("Initial Model" = "#E69F00",    
                                      "Overfitted Model" = "#D55E00"))  + 
        scale_linetype_manual("Model Version", 
                              values = c("Initial Model" = "solid", 
                                         "Overfitted Model" = "dashed")) +
        # Action labels
        annotate("text", 
                 x = management_scenarios %>% 
                         pluck("habitat_quality_mean", 1), 
                 y = 19, 
                 label = "Initial\nAction A", 
                 color = "#56B4E9", size = 3, hjust = 1.1, fontface = "bold") +
        annotate("text", 
                 x = management_scenarios %>% 
                         pluck("habitat_quality_mean", 2),
                 y = 19, 
                 label = "Initial\nAction B", 
                 color = "#009E73", 
                 size = 3, 
                 hjust = -0.3, 
                 fontface = "bold") +
        annotate("text",
                 x = management_scenarios_hacked %>% 
                         pluck("habitat_quality_mean", 1), 
                 y = 19, 
                 label = "Hacked\nAction A", 
                 color = "#0072B2", 
                 size = 3, 
                 hjust = 1.3, 
                 fontface = "bold") +
        annotate("text", 
                 x = management_scenarios_hacked %>% 
                         pluck("habitat_quality_mean", 2),
                 y = 19, 
                 label = "Hacked\nAction B", 
                 color = "#2C5F41", 
                 size = 3, 
                 hjust = -0.3,
                 fontface = "bold") 

performance_table <- 
        performance::compare_performance(model_initial, 
                                         model_overfitted,rank = TRUE) %>% 
        select(-Model) %>% 
        mutate(Name = stringr::str_replace(Name, 
                                           "model_overfitted", 
                                           "Overfitted Model") %>% 
                       stringr::str_replace(., 
                                            "model_initial", 
                                            "Initial Model")) %>% 
        mutate(across(-c(Name), ~ round(.x,digits =  2))) %>% 
        gt::gt() %>% 
        gt::fmt_percent(columns = Performance_Score) %>%  
        gt::cols_label(R2 = gt::md("$R^2$"),
                       R2_adjusted = gt::md("${R^2}_{adjusted}$"), 
                       AIC_wt = gt::md("$AIC_{wt}$"), 
                       AICc_wt = gt::md("$AICc_{wt}$"), 
                       BIC_wt = gt::md("$BIC_{wt}$"), 
                       Performance_Score = "Performance Score") %>% 
        gt::tab_header(title = "Stage 2: Model Fishing", 
                       subtitle = "The Modeller compares the two models and chooses the overfitted model based on these statistics.")

tmp <- tempfile(fileext = '.png') #generate path to temp .png file
gt::gtsave(performance_table, tmp) #save gt table as png
table_png <- png::readPNG(tmp, native = TRUE) # read tmp png file

combined_plot <- p1 / (table_png ) / (p3)
combined_plot <- combined_plot + plot_annotation(tag_levels = c("A"))
ggsave(filename = "figures/synthetic_example_QRPs.png", 
       combined_plot, 
       width = 10, 
       height = 12, 
       dpi = 600)
