# Step 1: Install and Load Packages
install.packages("ggplot2")
install.packages("plotly")

library(ggplot2)
library(plotly)

# Load Iris dataset
data(iris)


# Step 2: Create Static Scatter Plot using ggplot2
p <- ggplot(data = iris, aes(x = Sepal.Width, y = Petal.Width, color = Species)) +
  geom_point() +
  labs(title = "Static Scatter Plot",
       x = "Sepal Width",
       y = "Petal Width")

# Display static plot
p


# Step 3: Convert Static Plot to Interactive Plot
interactive_plot <- ggplotly(p)

# Display interactive plot
interactive_plot


# Step 4: Create Interactive Plot directly using Plotly
plot_ly(data = iris,
        x = ~Sepal.Width,
        y = ~Petal.Width,
        color = ~Species,
        type = "scatter",
        mode = "markers") %>%
  
  layout(
    title = "Iris Data Set Visualization",
    
    xaxis = list(
      title = "Sepal Width",
      ticksuffix = " cm"
    ),
    
    yaxis = list(
      title = "Petal Width",
      ticksuffix = " cm"
    )
  )

