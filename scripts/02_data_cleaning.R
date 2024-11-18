# Load the subset data
analysis_data <- read.csv("analysis_data.csv")

# Check for missing values
sum(is.na(analysis_data$world_rank))
sum(is.na(analysis_data$quality_of_education))

# Remove rows with missing values
cleaned_data <- na.omit(analysis_data)

# Convert columns to numeric if necessary
cleaned_data$world_rank <- as.numeric(cleaned_data$world_rank)
cleaned_data$quality_of_education <- as.numeric(cleaned_data$quality_of_education)

# Save cleaned data
write.csv(cleaned_data, "cleaned_data.csv", row.names = FALSE)