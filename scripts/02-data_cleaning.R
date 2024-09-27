#### Preamble ####
# Purpose: Cleans the raw Casino Opinions Data
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(janitor)
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("C:/Users/86189/Desktop/STA304A1/inputs/data/raw_data.csv")

cleaned_data <- 
  raw_data |>
  select(Q1_A, Q2_A, Q7_A_StandAlone, Q7_A_Integrated, Q7_A_A, Q7_A_B, Q7_A_C, Q7_A_D, Q7_A_E, Q7_A_F, Q7_A_G, Q7_A_H, Q7_A_I, Q7_A_J) |>
  rename(
    feeling = Q1_A,
    image = Q2_A,
    standalone = Q7_A_StandAlone,
    integrated = Q7_A_Integrated,
    noCasino = Q7_A_A,
    casinoOnly = Q7_A_B,
    conventionCentreSpace = Q7_A_C,
    culturalAndArtsFacilities = Q7_A_D,
    hotel = Q7_A_E,
    nightclubs = Q7_A_F,
    Restaurants = Q7_A_G,
    Retail = Q7_A_H,
    Theatre = Q7_A_I,
    Other = Q7_A_J,
  )

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
