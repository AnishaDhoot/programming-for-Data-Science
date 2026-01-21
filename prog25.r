# Sensor readings (sample data)
temperature <- c(28, 29, 30, 31, 32, 33, 34, 29, 28, 31)
humidity <- c(45, 42, 40, 38, 36, 35, 34, 41, 43, 37)
pressure <- c(1012, 1013, 1011, 1010, 1009, 1010, 1011, 1012, 1013, 1014)

# Calculate average readings
avg_temp <- mean(temperature)
avg_humidity <- mean(humidity)
avg_pressure <- mean(pressure)

# Find time intervals where condition is satisfied
condition_time <- which(temperature > 30 & humidity < 40)

# Print results
cat("Average Temperature:", avg_temp, "\n")
cat("Average Humidity:", avg_humidity, "\n")
cat("Average Pressure:", avg_pressure, "\n")

cat("Time intervals where temperature > 30°C and humidity < 40%:", 
    condition_time, "\n")
