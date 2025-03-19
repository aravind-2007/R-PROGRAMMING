# Load required libraries
library(ggplot2)
library(dplyr)

# Load the diamonds dataset (ggplot2 package provides this dataset)
data(diamonds)

# Summarize the count of each cut category
df <- diamonds %>% count(cut)

# Create a pie chart
ggplot(df, aes(x = "", y = n, fill = cut)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") + 
  theme_minimal() +
  labs(title = "Proportion of Cut Categories in Diamonds Dataset")
