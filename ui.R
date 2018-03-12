library(shiny)

library(shiny)
shinyUI(fluidPage(
    titlePanel("12.03.2018 - Top Cities"),
    sidebarLayout(
        sidebarPanel(
            checkboxInput("big", "Show Most Populous City", value=FALSE),
            checkboxInput("exp", "Show Most Expensive City", value = FALSE),
            checkboxInput("nice", "Show City with Highest Quality of Life", value = FALSE)
        ),
        mainPanel(
            leafletOutput("plot1")
            )
    )
))