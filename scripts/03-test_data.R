#### Preamble ####
# Purpose: Sanity check of the data
# Author: Ying Wen Bu
# Date: 29 September, 2024
# Contact: annie.bu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####
approval <- read_csv("C:/Users/86189/Desktop/STA304A1/outputs/data/clean_data(approval).csv")

# Test for NAs
all(is.na(approval$feeling))
all(is.na(approval$image))
all(is.na(approval$Gender))

# Test for valid values
approval$image == c("1.not at all", "2.neutral", "3.somewhat", "4.perfectly")
