# Load the cleaned data
cleaned_data <- read.csv("cleaned_data.csv")

# Perform Kendall's Tau correlation
cor_test <- cor.test(cleaned_data$world_rank, cleaned_data$quality_of_education, method = "kendall")

# Print and save results
sink("correlation_results.txt")
print(cor_test)
sink()