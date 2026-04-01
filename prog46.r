
#install.packages("ggplot2")

library(ggplot2)

Plant_ID <- c(1,2,3,4,5)
Growth_Rate <- c(3.2,1.8,2.6,0.9,3.8)
Condition_Label <- c("Sunny","Shade","Rainy","Drought","Cloudy")

plants <- data.frame(
  Plant_ID,
  Growth_Rate,
  Condition_Label,
  stringsAsFactors = FALSE
)

ggplot(plants, aes(x = Plant_ID, y = Growth_Rate)) +
  geom_point(color = "dodgerblue", size = 4) +
  geom_text(aes(label = Condition_Label), vjust = 1.5, color = "darkorange") +
  labs(
    title = "Scatter Plot of Plant Growth Data",
    x = "Plant ID",
    y = "Growth Rate"
  ) +
  theme_minimal()

