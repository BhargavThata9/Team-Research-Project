# Load the cleaned data
cleaned_data <- read.csv("cleaned_data.csv")

# Generate descriptive statistics
summary(cleaned_data)

# Plot distributions
png("world_rank_distribution.png")
hist(cleaned_data$world_rank, main = "Distribution of World Rank", xlab = "World Rank", col = "blue")
dev.off()

png("quality_of_education_distribution.png")
hist(cleaned_data$quality_of_education, main = "Distribution of Quality of Education", xlab = "Quality of Education", col = "green")
dev.off()
