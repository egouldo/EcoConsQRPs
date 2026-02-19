# A Framework for Questionable Research Practices in Ecology and Conservation

This repository contains code and resources related to the paper "A Framework for Questionable Research Practices in Ecology and Conservation."

The quarto manuscript is located at `ms/QRPs-in-Ecological-Modelling.qmd`, which can be viewed at [https://egouldo.github.io/EcoConsQRPs/](https://egouldo.github.io/EcoConsQRPs/).

## Repository Structure

- `ms/`: Contains the quarto manuscript and associated resources.
- `R/`: Contains R scripts for data analysis, figure generation, and appendices.
- `data/`: Contains datasets used in the analysis.
- `figures/`: Contains generated figures for the manuscript.
- `images/`: Contains images used in the manuscript.
- `tables/`: Contains tables used in the manuscript.

## Regenerating The Manuscript

To regenerate the manuscript, ensure you have the necessary R packages installed and run the following command in R:

```R
quarto::quarto_render("ms/QRPs-in-Ecological-Modelling.qmd")
```

# Citing this work
If you use or refer to this work in your research, please cite it as follows:

> Gould E, Fraser H, Wintle B, Rumpff L, Fidler F (2026). "Manuscript Source Code For: A Framework for Questionable Research Practices in Ecological Modelling." https://github.com/egouldo/EcoConsQRPs
