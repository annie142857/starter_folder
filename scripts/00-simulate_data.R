#### Preamble ####
# Purpose: Simulates Marriage License Data by Date
# Author: YIng Wen Bu
# Date: 19 September, 2024
# Contact: anni.bu@mail.utoronto.ca
# License: MIT
# Pre-requisites: NOne
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(304)

# Define the start and end date
start_date <- as.Date("2018-01-01")
end_date <- as.Date("2023-12-31")

# Set the number of random dates you want to generate
number_of_dates <- 100

data <- 
  tibble(
    dates = as.Date(
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
