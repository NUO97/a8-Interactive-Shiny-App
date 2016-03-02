# User Interface 

# Require Packages
library(shiny)
library(plotly)
library(dplyr)

# Create a UI

shinyUI(fluidPage(
  # Create a title panel
  
  titlePanel("Iris Dataset"),
  
  # Declare a sidebar layout
  sidebarLayout(
    
    # Put sidebar elements in here (i.e., widgets)
    sidebarPanel( 
      # Create a slider bar to adjust the opacity of the dots
      sliderInput("opacity", 
                  "Opacity of the dots",
                  min = 1,
                  max = 100,
                  value = 50),
      
      # Create a slider bar to adjust the size of the dots
      sliderInput("size", 
                  "Size of the dots",
                  min = 1,
                  max = 10,
                  value = 2),
      
      # Input to select variable to graph
      selectInput("species", 
                  label = h3("Choose Species"), 
                  choices = list("Setosa" = 'setosa', "Versicolor" = 'versicolor', "Virginica" = 'virginica'), 
                  selected = 'setosa')
    ),
    
    # Put the plots here
    mainPanel("Visualization of the dataset", 
              plotlyOutput('graph')
    )
  )
  
))