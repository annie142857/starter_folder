#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Ying Wen Bu
# Date: 19 September, 2024
# Contact: annie.bu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(dplyr)

#### Download data ####

# get package
package <- show_package("427ca4cd-168a-4a37-883d-4a574277caf5")
package

# get all resources for this package
resources <- list_package_resources("427ca4cd-168a-4a37-883d-4a574277caf5")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('xlsx', 'xls'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% 
  get_resource()

data <- data[[1]]

#### Save data ####
write.csv(data, "C:/Users/86189/Desktop/STA304A1/inputs/data/raw_data.csv")