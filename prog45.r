
# Step 1: Install and Load Required Package
# Install ggplot2 (run only once)
install.packages("ggplot2")

# Load ggplot2 into the session
library(ggplot2)


# Step 2: Load and View Dataset
# Load the built-in midwest dataset
data("midwest", package = "ggplot2")

# View dataset (opens in viewer)
View(midwest)

# Display first few rows in console
head(midwest)


# Step 3: Visualizations

# 3.1 Scatter Plot - percollege vs percadultpoverty
ggplot(data = midwest, aes(x = percollege, y = percadultpoverty)) +
  geom_point() +
  labs(title = "Scatter Plot: College Education vs Adult Poverty",
       x = "Percentage with College Education",
       y = "Percentage of Adults in Poverty")


# 3.1.2 Scatter Plot with Color Mapping (by state)
ggplot(data = midwest, aes(x = percollege, y = percadultpoverty, color = state)) +
  geom_point() +
  labs(title = "Scatter Plot with State-wise Colors",
       x = "College Education (%)",
       y = "Adult Poverty (%)")


# 3.1.3 Scatter Plot with Constant Color and Transparency
ggplot(data = midwest, aes(x = percollege, y = percadultpoverty)) +
  geom_point(color = "red", alpha = 0.3) +
  labs(title = "Scatter Plot with Transparency",
       x = "College Education (%)",
       y = "Adult Poverty (%)")


# 3.1.4 Scatter Plot with Smooth Line (Trend)
ggplot(data = midwest, aes(x = percollege, y = percadultpoverty)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Scatter Plot with Trend Line",
       x = "College Education (%)",
       y = "Adult Poverty (%)")


# 3.2 Bar Plot - State-wise Total Population
ggplot(data = midwest, aes(x = state, y = poptotal)) +
  geom_col(fill = "blue") +
  labs(title = "Total Population by State",
       x = "State",
       y = "Total Population")


# 3.3 Hexagonal Heatmap (Density Plot)
ggplot(data = midwest, aes(x = percollege, y = percadultpoverty)) +
  geom_hex() +
  labs(title = "Hexbin Plot: Density of Education vs Poverty",
       x = "College Education (%)",
       y = "Adult Poverty (%)")


# 3.4 Shared Aesthetic Mapping
ggplot(data = midwest, aes(x = percollege, y = percadultpoverty)) +
  geom_point() +                 # uses default mapping
  geom_smooth() +               # uses default mapping
  geom_point(aes(y = percchildbelowpovert), color = "green")  # override y-axis


# 3.5 Color Mapping by State
ggplot(data = midwest) +
  geom_point(aes(x = percollege, y = percadultpoverty, color = state)) +
  labs(title = "Scatter Plot Colored by State")


# 3.6 Custom Color and Transparency
ggplot(data = midwest) +
  geom_point(aes(x = percollege, y = percadultpoverty),
             color = "red",
             alpha = 0.3) +
  labs(title = "Customized Scatter Plot with Transparency")


 

