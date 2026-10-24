library(dplyr)
library(ggplot2)

# A tiny example dataset
df <- data.frame(
  group = c("pink", "pink", "blue", "blue"),
  value = c(16, 17, 18, 19)
)

summary_df <- df %>%
  group_by(group) %>%
  summarise(mean_value = mean(value))

print(summary_df)

ggplot(df, aes(x = group, y = value)) +
  geom_boxplot()

renv::snapshot()

install.packages("tidyr")
library(tidyr)

renv::snapshot()

renv::restore(