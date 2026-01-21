# Initialize team performance list
teams <- list(
  "Team A" = c(90, 85, 88),
  "Team B" = c(78, 82, 79),
  "Team C" = c(88, 92, 90)
)

# Function to add a new team
add_team <- function(team, scores) {
  teams[[team]] <<- scores
}

# Function to remove a team
remove_team <- function(team) {
  teams[[team]] <<- NULL
}

# Calculate average score for each team
average_scores <- sapply(teams, mean)

# Rank teams based on average scores
ranked_teams <- sort(average_scores, decreasing = TRUE)

# Print results
print(average_scores)
cat("Team rankings based on average scores:\n")
print(ranked_teams)
