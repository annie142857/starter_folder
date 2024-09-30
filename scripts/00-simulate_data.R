#### Preamble ####
# Purpose: Simulates Casino Survey Data
# Author: YIng Wen Bu
# Date: 19 September, 2024
# Contact: annie.bu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(304)

# create 300 responses, with 15 variables excluding the index number.
data <- 
  tibble(
    "Number" = 1:300,
    "FeelingNewCasino" = sample(
      x = c("Strongly in favour", "Somewhat in favour", "Neutral or mixed feelings", "Somewhat opposed", "Strongly opposed"),
      size = 300,
      replace = TRUE
    ),
    "CasinoFitToronto" = sample(
      x = c("Fits Image Perfectly", "Fits Image Somewhat", "Neutral", "Does Not Fit at All"),
      size = 300,
      replace = TRUE
    ),
    "Standalone" = sample(
      x = c("Highly Suitable", "Somewhat Suitable", "Neutral or Mixed Feelings", "Somewhat Unsuitable", "Strongly Unsuitable"),
      size = 300,
      replace = TRUE
    ),
    "Complex" = sample(
      x = c("Highly Suitable", "Somewhat Suitable", "Neutral or Mixed Feelings", "Somewhat Unsuitable", "Strongly Unsuitable"),
      size = 300,
      replace = TRUE
    ),
    "onlyCasino" = sample(
      x = c(1, 0),
      size = 300,
      replace = TRUE
    ),
    "noCasino" = sample(
      x = c(1, 0),
      size = 300,
      replace = TRUE
    ),
    "Convention Centre Space" = sample(
      x = c(TRUE, FALSE),
      size = 300,
      replace = TRUE
    ),
    "Culture and Arts Facilities" = sample(
      x = c(TRUE, FALSE),
      size = 300,
      replace = TRUE
    ),
    "Hotel" = sample(
      x = c(TRUE, FALSE),
      size = 300,
      replace = TRUE
    ),
    "Nightclubs" = sample(
      x = c(TRUE, FALSE),
      size = 300,
      replace = TRUE
    ),
    "Restaurants" = sample(
      x = c(TRUE, FALSE),
      size = 300,
      replace = TRUE
    ),
    "Retail" = sample(
      x = c(TRUE, FALSE),
      size = 300,
      replace = TRUE
    ),
    "Theatre" = sample(
      x = c(TRUE, FALSE),
      size = 300,
      replace = TRUE
    ),
    "Other" = sample(
      x = c(TRUE, FALSE),
      size = 300,
      replace = TRUE
    ),
    "Gender" = sample(
      x = c("Male", "Female", "Transgender"),
      size = 300,
      replace = TRUE
    ),
)

#### Write_csv
write_csv(data, file = "C:/Users/86189/Desktop/STA304A1/outputs/data/simulated_data.csv")
