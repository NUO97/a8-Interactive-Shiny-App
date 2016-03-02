# Shiny Server

# Set the working directory 
setwd('C:/Users/chenn/Documents/Info498F/a8-Interactive-Shiny-App/scripts')

# Require Packages
library(shiny)
library(plotly)
source('build_graph.r')


# Server

shinyServer(function(input, output) {
  # Render the scatter plot
  output$graph <- renderPlotly({ 
    build_graph(iris, input$species, input$opacity, input$size) # take in the user inputs as parameters
  })
  
})