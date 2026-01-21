# Initialize customer purchase list
customers <- list(
  Alice = c(200, 150, 300),
  Bob = c(100, 80, 150),
  Charlie = c(250, 300, 100)
)

# Function to add a new customer
add_customer <- function(name, purchases) {
  customers[[name]] <<- purchases
}

# Function to remove a customer
remove_customer <- function(name) {
  customers[[name]] <<- NULL
}

# Calculate total purchase for each customer
total_purchases <- sapply(customers, sum)

# Find highest and lowest purchase customers
highest_customer <- names(which.max(total_purchases))
lowest_customer <- names(which.min(total_purchases))

# Print results
print(total_purchases)
cat("Highest total purchase by:", highest_customer, "\n")
cat("Lowest total purchase by:", lowest_customer, "\n")
