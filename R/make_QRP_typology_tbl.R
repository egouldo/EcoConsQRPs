# QRP typology table
library(tidyverse)
library(glue)
library(gt)
library(marquee)

typology <- tibble(
        Decision = c(
                "A priori",
                "A priori",
                "A priori",
                "Defensible",
                "Defensible",
                "Defensible",
                "Questionable",
                "Questionable",
                "Questionable"
        ),
        Constraint = c(
                "$\\phi(T) \\in \\Phi_{\\text{fixed}}$ ",
                "$\\phi(T) \\in \\Phi_{\\text{fixed}}$ ",
                "$\\phi(T) \\in \\Phi_{\\text{fixed}}$ ",
                "$\\phi_D(T) \\in \\Phi(\\Omega)$ ",
                "$\\phi_D(T) \\in \\Phi(\\Omega)$ ",
                "$\\phi_D(T) \\in \\Phi(\\Omega)$ ",
                "$\\phi_Q(T) \\in \\Phi(R^*)$ ",
                "$\\phi_Q(T) \\in \\Phi(R^*)$ ",
                "$\\phi_Q(T) \\in \\Phi(R^*)$ "
        ),
        Motivation = c(
                "",
                "",
                "",
                "*Systematic evaluation according to predetermined criteria.*",
                "*Systematic evaluation according to predetermined criteria.*",
                "*Systematic evaluation according to predetermined criteria.*",
                "*Optimising for preferred results $R^*$, rather than assessment.*",
                "*Optimising for preferred results $R^*$, rather than assessment.*",
                "*Optimising for preferred results $R^*$, rather than assessment.*"
        ),
        Prespec_Reporting = c(
                "$S_{\\text{pre}}(\\{C(X,M,\\phi\\})$",
                "$S_{\\text{pre}}(\\{C(X,M,\\phi(M_j))\\})$",
                "Decisions affecting the model $\\phi$ or model outputs $\\phi(M_j)$, and which analyses and results will be reported, are decided a priori.",
                "$S_{\\text{pre}}(\\{C(X,M;\\phi_D\\})$",
                "$S_{\\text{pre}}(\\{C(X,M;\\phi_D(M_j))\\})$",
                "Data-dependent and defensible modelling decisions $C(\\mathbf{X}, T;\\phi_D)$, with pre-specified reporting choices $S_{\\text{pre}}$.",
                "Model Fishing: $C(X,M;\\phi_Q(M))$",
                "S-hacking: $C(X,M;\\phi_Q(M_j))$",
                "Modelling and analysis decisions are opportunistic and therefore questionable."
        ),
        Selective_Reporting = c(
                "Selective Reporting: $S_Q\\{C(X,M,\\phi\\})$",
                "$S_Q\\{C(X,M,\\phi(M_j))\\})$",
                "A priori analysis decisions about the model $\\phi$ and model outputs $\\phi(M_j)$, but reporting choices are data-dependent, and are selectively reported $S_Q$.",
                "Selective Reporting: $S_Q(\\{C(X,M;\\phi_D\\})$",
                "$S_Q(\\{C(X,M;\\phi_D(M_j))\\})$",
                "Modelling decisions are data-dependent and defensible, but subject to selective reporting.",
                "By definition, desired outcomes $R^*$ and $\\phi_Q$ are undisclosed, and may be tacit rather than explicit.",
                "",
                ""
        )
) %>%
        mutate(Decision = glue::glue("{Decision} analytic decision, where: "))

typology_tbl <- typology %>%
        group_by(Decision, Constraint, Motivation) %>%
        gt(row_group_as_column = TRUE, process_md = TRUE, row_group.sep = "<br>") %>%
        cols_label(
                Decision = "**Decision Type**",
                Constraint = "**Constraint Set**",
                Motivation = "**Motivation**",
                Prespec_Reporting = "**With Pre-specified Reporting $S_{\\text{pre}}$**",
                Selective_Reporting = "**With Selective Reporting $S_Q$**"
        ) %>%
        fmt_markdown(columns = everything()) %>%
        cols_align(align = "left", columns = everything()) %>%
        gt::cols_label_with(fn = gt::md) %>%
        tab_stubhead(label = gt::md("**Analytic Decision Type and Motivation**")) %>%
        gt::tab_spanner(label = "Reporting Type") %>%
        gt::tab_style(
                style = cell_borders(style = "hidden", sides = "bottom"),
                locations = cells_body(rows = c(1, 2, 4, 5, 7, 8), columns = everything())
        ) %>%
        gt::tab_style(
                style = cell_text(v_align = "top"),
                locations = cells_body(columns = everything(), rows = c(3, 6))
        ) |>
        gt::tab_style(
                style = cell_text(
                        size = px(20),
                        font = google_font("Cairo"),
                        color = "black",
                ),
                locations = cells_body()
        ) |>
        gt::tab_style(
                style = cell_text(
                        size = px(20),
                        font = google_font("Cairo"),
                        color = "black",
                ),
                locations = cells_row_groups()
        ) |>
        tab_style(
                style = cell_text(
                        color = "black",
                        font = google_font("Chivo"),
                        size = px(22),
                        weight = 400
                ),
                locations = cells_column_labels()
        ) |>
        tab_style(
                style = cell_text(
                        color = "black",
                        font = google_font("Chivo"),
                        size = px(22),
                        weight = 400
                ),
                locations = cells_stubhead()
        ) |>
        tab_style(
                style = cell_fill(),
                locations = cells_body(columns = Selective_Reporting)
        ) |>
        tab_style(
                style = cell_fill(),
                locations = cells_body(columns = Prespec_Reporting, rows = c(7:9))
        )


gtExtras::gtsave_extra(
        typology_tbl,
        path = here::here("tables/"),
        filename = "QRP_typology.png",
        zoom = 3,
        expand = 1,
        vwidth = 850
)
