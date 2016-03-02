# Require Packages
library(dplyr)
library(plotly)

# Create a function that takes in a dataset, a species name, opacity and size as parameters and plots a graph
build_graph <- function(df, species = 'setosa', opacity_num = 50, size_num = 10) {
  dataset <- df %>% 
    filter(Species == eval(parse(text = 'species')))
  
  dataset %>% 
    plot_ly(x = Sepal.Length, # Plot Sepal width and length
            y = Sepal.Width, 
            name = "Sepal",
            mode='markers', 
            marker = list(
              opacity = opacity_num/100, 
              size = size_num + 10
            )) %>% 
    # Set the layout
    layout(xaxis = list(range = c(0, 8), title = "Length"), 
           yaxis = list(range = c(0, 5), title = "Width"),
           title = "Scatter plot of Iris" # Add a title for the graph
    ) %>% 
    # Add trace for the petal
    add_trace(x = Petal.Length,
              y = Petal.Width,
              name = "Petal"
              ) %>% 
    return()
  
}