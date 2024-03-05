#### Preamble ####
# Purpose: Cleans the Paris Airbnb Data
# Author: Aryaman Sharma
# Date: 4 March 2024
# Contact: aryaman.sharma@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run 01-download_data.R before this file.
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)
library(arrow)
library(naniar)
library(janitor)
library(modelsummary)

#### Clean data ####
airbnb_data <- read_csv("data/raw_data/airbnb_data.csv")

airbnb_data_selected <-
  airbnb_data |>
  select(
    host_id,
    host_response_time,
    host_is_superhost,
    host_total_listings_count,
    neighbourhood_cleansed,
    bathrooms,
    bedrooms,
    price,
    number_of_reviews,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_value
  )

write_parquet(
  x = airbnb_data_selected, 
  sink = 
    "data/analysis_data/2024-03-04-paris-airbnblistings-select_variables.parquet"
)

rm(airbnb_data)



