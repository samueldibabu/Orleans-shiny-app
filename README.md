
---
title: "README"
author: "Samuel Dibabu Assefa"
date: "`r Sys.Date()`"
output: html_document
---
# Orleans Parish Socioeconomic Trends — Shiny App

## Overview

This project presents an interactive Shiny dashboard for exploring longitudinal socioeconomic indicators in Orleans Parish (2016–2023). The application enables users to dynamically select variables and examine temporal trends through bar chart visualizations.

## Live Application

Access the deployed app here:
https://samuel-dibabu-assefa.shinyapps.io/R_Shiny_app/

## Features

* Interactive variable selection
* Year-wise trend visualization
* Clean labeling of socioeconomic indicators
* Lightweight, reproducible Shiny architecture

## Dataset

The dataset contains census tract–level aggregated indicators, including:

* Percent White / Black / Hispanic
* Youth population proportion
* Unemployment rate
* Family poverty rate
* Public assistance rate
* Additional socioeconomic measures

Source: American Community Survey (ACS) 5-year estimates (2016–2023)

## Project Structure

* `app.R` — Shiny application (UI + server)
* `Orleans_CT_ACS5_2016_2023_Mean_SD.xlsx` — input dataset

## How to Run Locally

```r
install.packages(c("shiny", "ggplot2", "readxl", "stringr"))
shiny::runApp()
```

## Methodological Note

The application visualizes mean estimates of socioeconomic indicators across years. Standard deviation columns were excluded to ensure interpretability of trends.

## Limitations

* Aggregated data; no causal inference
* Single-variable visualization at a time
* Dependent on ACS estimates (sampling variability not shown)

## Future Improvements

* Multi-variable comparison (faceting or overlays)
* Inclusion of uncertainty (error bars)
* Spatial visualization (map-based interface)

## Author

Samuel Dibabu Assefa

## License

This project is intended for academic and research use.
