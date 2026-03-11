# Step 1: Install, Load Packages and set working directory(WD)

# install required package (one time per machine)
install.packages("DBI")
install.packages("dplyr")
install.packages("RSQLite")

# Load packages
library(DBI)
library(dplyr)
library(RSQLite)

# Load the starwars dataset built into dplyr
data("starwars", package = "dplyr")
View(starwars)


# Step 2 (Select Columns): Extract name, species, height, mass, homeworld, gender
starwars_data <- starwars %>%
  select(name, species, height, mass, homeworld, gender)

View(starwars_data)


# Step 3 (Filter Rows): Keep only species with more than 2 characters
filtered_data <- starwars_data %>%
  group_by(species) %>%
  filter(n() > 2) %>%
  ungroup()

View(filtered_data)


# Step 4 (Create New Columns):
# a) Convert height from cm to metres
# b) Categorize mass into weight categories

filtered_data <- filtered_data %>%
  mutate(
    height_m = height / 100,
    weight_category = case_when(
      mass < 55 ~ "Underweight",
      mass >= 55 & mass < 85 ~ "Normal",
      mass >= 85 & mass < 100 ~ "Overweight",
      mass >= 100 ~ "Obese",
      TRUE ~ NA_character_
    )
  )

View(filtered_data)


# Step 5 (Summarize Data): Average height per species-gender combination
species_gender_avg <- filtered_data %>%
  group_by(species, gender) %>%
  summarize(avg_height = mean(height, na.rm = TRUE), .groups = "drop")

View(species_gender_avg)


# Step 6 (Top 3 Species): Highest average height across all genders
top3_species <- filtered_data %>%
  group_by(species) %>%
  summarize(avg_height = mean(height, na.rm = TRUE), .groups = "drop") %>%
  arrange(desc(avg_height)) %>%
  slice_max(avg_height, n = 3)

View(top3_species)
