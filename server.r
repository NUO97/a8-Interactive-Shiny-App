# Shiny Server

# Set the working directory 
# setwd('C:/Users/chenn/Documents/Info498F/a8-Interactive-Shiny-App/scripts')
# If I set the working directory it would create an error during publication

# Require Packages
library(shiny)
library(plotly)
source('scripts/build_graph.r')


# Server

shinyServer(function(input, output) {
  # Render the scatter plot
  output$graph <- renderPlotly({ 
    build_graph(iris, input$species, input$opacity, input$size) # take in the user inputs as parameters
  })
  
})