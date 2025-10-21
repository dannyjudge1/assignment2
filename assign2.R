##
#install.packages("readxl")
#install.packages("skimr")


library(readxl)
library(skimr)
setwd("C:/Users/danny/OneDrive/Documents/GitHub/QAC380-Statistical-Consulting")

penguins <- read_excel("penguins.xlsx")

summary(penguins)
skim(penguins)


# adding a regression to the R file. Models a simple regression with three categorical variables and a fixed effects of time. 
mod_1 <- aov(body_mass_g ~ island+species+ as.factor(year), data= penguins)
summary(mod_1)
plot(mod_1)
