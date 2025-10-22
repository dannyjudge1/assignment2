##
install.packages("readxl")
install.packages("skimr")
install.packages("ggplot2")

library(ggplot2)
library(readxl)
library(skimr)

setwd("C:/Users/danny/OneDrive/Documents/GitHub/QAC380-Statistical-Consulting")

penguins <- read_excel("penguins.xlsx")


summary(penguins)
skim(penguins)
# Bar chart comparing species across islands
ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "dodge") +
  labs(title = "Number of Each Species per Island",
       x = "Island",
       y = "Count",
       fill = "Species") +
  theme_minimal()


