# Load the cleaned data
cleaned_data <- read.csv("cleaned_data.csv")

# Scatterplot with trendline
png("scatterplot_world_rank_vs_quality.png")
plot(cleaned_data$world_rank, cleaned_data$quality_of_education, 
     main = "Scatterplot of World Rank vs Quality of Education", 
     xlab = "World Rank", ylab = "Quality of Education", col = "red", pch = 19)
abline(lm(cleaned_data$quality_of_education ~ cleaned_data$world_rank), col = "blue")
dev.off()

# Display the plot
plot(cleaned_data$world_rank, cleaned_data$quality_of_education, 
     main = "Scatterplot of World Rank vs Quality of Education", 
     xlab = "World Rank", ylab = "Quality of Education", col = "red", pch = 19)
abline(lm(cleaned_data$quality_of_education ~ cleaned_data$world_rank), col = "blue")

# Optional: Correlation matrix
cor_matrix <- cor(cleaned_data[, c("world_rank", "quality_of_education")], method = "spearman")
write.csv(cor_matrix, "correlation_matrix.csv", row.names = TRUE)