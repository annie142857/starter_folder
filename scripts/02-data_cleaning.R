#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
install.packages("janitor")
library(janitor)
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("C:/Users/86189/Downloads/starter_folder-main (1)/starter_folder-main/data/raw_data/downloaded_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |> 
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
  )

#### Save data ####
write_csv(cleaned_data, "C:/Users/86189/Downloads/starter_folder-main (1)/starter_folder-main/data/analysis_data/clean_data.csv")
