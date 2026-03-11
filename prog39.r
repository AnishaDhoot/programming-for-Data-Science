# Step 1: Install and load the required library
install.packages("dplyr")
library(dplyr)

# Step 2: Create the Customers dataset
customers <- data.frame(
  CustomerName = c("John Doe", "Jane Smith", "Robert Brown",
                   "Emily Davis", "Michael Green"),
  Email = c("john.doe@example.com", "jane.smith@example.com",
            "robert.brown@example.com", "emily.davis@example.com",
            "michael.green@example.com"),
  stringsAsFactors = FALSE
)

# Step 3: Create the Purchases dataset
purchases <- data.frame(
  CustomerName   = c("John Doe", "Jane Smith", "Robert Brown",
                     "Sarah Johnson", "Emily Davis"),
  PurchaseAmount = c(150, 200, 120, 180, 220),
  Date           = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03",
                             "2023-01-04", "2023-01-05")),
  stringsAsFactors = FALSE
)

# Step 4: Perform Left Join
# Keeps all customers; purchase details are NA for unmatched customers
left_join_result <- left_join(customers, purchases, by = "CustomerName")
print("Left Join Result:")
print(left_join_result)

# Step 5: Perform Right Join
# Keeps all purchases; customer details are NA for unmatched purchases
right_join_result <- right_join(customers, purchases, by = "CustomerName")
print("Right Join Result:")
print(right_join_result)

# Step 6: Perform Inner Join
# Returns only rows with matching CustomerName in both datasets
inner_join_result <- inner_join(customers, purchases, by = "CustomerName")
print("Inner Join Result:")
print(inner_join_result)

# Step 7: Perform Outer Join (Full Join)
# Returns all rows from both datasets; NA where no match exists
outer_join_result <- full_join(customers, purchases, by = "CustomerName")
print("Outer Join (Full Join) Result:")
print(outer_join_result)
