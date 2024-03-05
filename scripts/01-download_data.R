#### Preamble ####
# Purpose: Downloads and saves the data from http://insideairbnb.com/get-the-data
# Author: Aryaman Sharma
# Date: 4 March 2024
# Contact: aryaman.sharma@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? Do not run this file many times, it can create a load on the Airbnb server.


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
url <-
  paste0(
    "http://data.insideairbnb.com/france/ile-de-france/",
    "paris/2023-12-12/data/listings.csv.gz"
  )

airbnb_data <-
  read_csv(
    file = url,
    guess_max = 20000
  )

#### Save data ####
write_csv(airbnb_data, "data/raw_data/airbnb_data.csv")

         
