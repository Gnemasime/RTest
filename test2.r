# Function to generate Pascal's Triangle
generate_pascals_triangle <- function(n) {
  triangle <- list()  # Initialize an empty list to store rows
  
  for (i in 0:(n-1)) {
    row <- numeric(i + 1)  # Create an empty row with i+1 elements
    row[1] <- 1  # First element of each row is 1
    row[i + 1] <- 1  # Last element of each row is 1
    
    # Fill in the middle elements using the Pascal's triangle rule
    for (j in 1:i) {
      row[j + 1] <- triangle[[i]][j] + triangle[[i]][j + 1]
    }
    
    triangle[[i + 1]] <- row  # Add the row to the triangle list
  }
  
  # Print the triangle
  for (row in triangle) {
    print(row)
  }
}

# Generate Pascal's Triangle for 5 rows
generate_pascals_triangle(5)
