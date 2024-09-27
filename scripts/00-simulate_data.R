#### Preamble ####
# Purpose: Simulates Casino Survey Data
# Author: YIng Wen Bu
# Date: 19 September, 2024
# Contact: anni2.bu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(304)

# Set the number of random responses you want to generate
number_of_responses <- 300

data <- 
  tibble(
    "Number" = 1:number_of_responses,
    "Feeling new casino" = sample(
      x = c("Strongly in favour", "Somewhat in favour", "Neutral or mixed feelings", "Somewhat opposed", "Strongly opposed"),
      size = 300,
      replace = TRUE
    ),
    "Casino fit Toronto" = sample(
      x = c("Fits Image Perfectly", "Fits Image Somewhat", "Neutral", "Does Not Fit at All"),
      size = 300,
      replace = TRUE
    ),
    "only casino" = sample(
      x = c(1, 0),
      size = 300,
      replace = TRUE
    ),
    "no casino" = sample(
      x = c(1, 0),
      size = 300,
      replace = TRUE
    ),
    "casino and others" = sample(
      x = c("Male", "Female", "Transgender"),
      size = 300,
      replace = TRUE
    ),
    "Gender" = sample(
      x = c("Male", "Female", "Transgender"),
      size = 300,
      replace = TRUE
    ),
              as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 10)
)

#### Write_csv
write_csv(data, file = "C:/Users/86189/Downloads/starter_folder-main (1)/starter_folder-main/data/analysis_data/simulated_data.csv")
