# Closing prices of the stock
closing_prices <- c(
  120, 122, 118, 121, 119, 117, 123, 125, 126, 124,
  128, 130, 129, 131, 135, 134, 136, 137, 140, 138,
  139, 141, 142, 144, 143, 145, 146, 148, 147, 149
)

# Calculate daily returns (percentage change)
daily_returns <- (closing_prices[-1] - closing_prices[-length(closing_prices)]) /
                 closing_prices[-length(closing_prices)] * 100

# Find highest and lowest daily returns
highest_return <- max(daily_returns)
lowest_return <- min(daily_returns)

# Calculate cumulative return
cumulative_return <- (closing_prices[length(closing_prices)] -
                      closing_prices[1]) / closing_prices[1] * 100

# Display results
cat("Daily Returns (%):\n")
print(daily_returns)

cat("\nHighest Daily Return:", highest_return, "%\n")
cat("Lowest Daily Return:", lowest_return, "%\n")
cat("Cumulative Return over the Month:", cumulative_return, "%\n")
