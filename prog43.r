# Step 1: Install and load jsonlite package
install.packages("jsonlite")
library(jsonlite)

# Step 2: Set working directory
setwd("C:/Anisha/VITV/Sem 6/PDS/lab/inventory.json")

# Step 3: Read the existing inventory JSON file
inventory_data <- fromJSON("inventory.json")

# Display the existing inventory
cat("Existing Inventory:\n")
print(inventory_data)

# Step 4: Add a new product to the inventory
new_product <- list(
  product_id   = "P006",
  name         = "Wireless Mouse",
  category     = "Electronics",
  price        = 29.99,
  stock        = 150
)

# Append new product to inventory list
inventory_data <- c(inventory_data, list(new_product))

# Step 5: Write updated inventory to a new JSON file
updated_json <- toJSON(inventory_data, pretty = TRUE, auto_unbox = TRUE)
write(updated_json, file = "updated_inventory.json")

cat("\nInventory updated and saved to updated_inventory.json\n")

# Step 6: Verify - Read and display the updated inventory
updated_data <- fromJSON("updated_inventory.json")
cat("\nUpdated Inventory:\n")
print(updated_data)
