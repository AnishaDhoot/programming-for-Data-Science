# Define the function
getfloatinpt <- function() {
  input <- readline(prompt = "Enter a number: ")
  as.numeric(input)
}

# ---- Testing the function ----

# Test Case 1: User input is '42'
result1 <- getfloatinpt()
result1

# Test Case 2: User input is '100'
result2 <- getfloatinpt()
result2

# Test Case 3: User input is '7'
result3 <- getfloatinpt()
result3
