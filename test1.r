# Set 1: ID, Name, Verification Status
login_data <- data.frame(
  ID = c(1, 2),
  Name = c("Alice", "Bob"),
  Verified = c(TRUE, FALSE)
)

# Set 2: ID, Password
password_data <- data.frame(
  ID = c(1, 2),
  Password = c("09122018", "18122022")
)

# Merge the two data sets by ID
merged_data <- merge(login_data, password_data, by = "ID")

# Display the merged data
print(merged_data)
