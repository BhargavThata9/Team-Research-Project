# Load required libraries
library(readr)

# Load the dataset
cwur_data <- read_csv("cwurData.csv")

# View the structure and summary of the dataset
head(cwur_data)
str(cwur_data)
summary(cwur_data)

# Subset relevant columns
analysis_data <- cwur_data[, c("world_rank", "quality_of_education")]

# Save subset data for further steps
write.csv(analysis_data, "analysis_data.csv", row.names = FALSE)
