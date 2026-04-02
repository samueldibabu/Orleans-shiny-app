library(shiny)
library(ggplot2)
library(readxl)

# Load data
data <- read_excel("Orleans_CT_ACS5_2016_2023_Mean_SD.xlsx")

# Keep only year + mean columns
data <- data[, grep("_mean$|year", names(data))]

# Label mapping (data → human-readable)
labels <- c(
  pctwhite_mean = "Percent White",
  pctblack_mean = "Percent Black",
  pcthisp_mean  = "Percent Hispanic",
  pctyouth_mean = "Percent Youth",
  unemploy_mean = "Unemployment",
  famblpov_mean = "Family Below Poverty",
  pubassist_mean = "Public Assistance",
  femheaded_mean = "Female-Headed Households",
  ICE_race_mean = "ICE-Race",
  ICE_income_mean = "ICE-Income",
  ICE_race_income_mean = "ICE-Race-Income",
  gini_mean = "GINI-Mean",
  medinc_mean = "Median Income",
  rent_mean = "Rent",
  home_val_mean = "Home Value",
  pct_edu_mean = "Percent Educated",
  CDindex_mean = "CD Index"
  
)

# UI
ui <- fluidPage(
  
  selectInput("metric", "Choose Metric",
              choices = setNames(names(labels), labels)),
  
  plotOutput("barPlot")
)

# Server
server <- function(input, output) {
  
  output$barPlot <- renderPlot({
    
    ggplot(data, aes(x = factor(year),
                     y = .data[[input$metric]])) +
      geom_bar(stat = "identity") +
      labs(
        title = paste("Trend of", labels[input$metric], "(2016–2023)"),
        x = "Year",
        y = labels[input$metric]
      )
  })
}

# Run app
shinyApp(ui, server)

