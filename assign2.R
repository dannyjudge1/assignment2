##
#install.packages("readxl")
#install.packages("skimr")


library(readxl)
library(skimr)
setwd("C:/Users/danny/OneDrive/Documents/GitHub/QAC380-Statistical-Consulting")

penguins <- read_excel("penguins.xlsx")

summary(penguins)
skim(penguins)
