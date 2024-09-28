#### Preamble ####
# Purpose: Cleans the raw Casino Opinions Data
# Author: Annie Bu
# Date: 19 September
# Contact: annie.bu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(janitor)
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("C:/Users/86189/Desktop/STA304A1/inputs/data/raw_data.csv")

cleaned_data <- 
  raw_data |>
  select(Q1_A, Q2_A, Q7_A_StandAlone, Q7_A_Integrated, Q7_A_A, Q7_A_B, Q7_A_C, Q7_A_D, Q7_A_E, Q7_A_F, Q7_A_G, Q7_A_H, Q7_A_I, Q7_A_J, Gender) |>
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

approval <-
  cleaned_data |>
  select(feeling, image, Gender) |>
  drop_na(feeling, image, Gender) |>
  mutate(
    feeling =
      case_match(
        feeling,
        "Strongly Opposed" ~ "1",
        "Somewhat Opposed" ~ "2",
        "Neutral or Mixed Feelings" ~ "3",
        "Somewhat in Favour" ~ "4",
        "Strongly in Favour" ~ "5"
      ),
    image =
      case_match(
        image,
        "Does Not Fit My Image At All" ~ "1.not at all",
        "Neutral / I am Not Sure" ~ "2.neutral",
        "Fits Image Somewhat" ~ "3.somewhat",
        "Fits Image Perfectly" ~ "4.perfectly"
      )
  )


#### Save data ####
write_csv(approval, "C:/Users/86189/Desktop/STA304A1/outputs/data/clean_data(approval).csv")
