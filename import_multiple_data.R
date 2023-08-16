# Project: Functional purrr presentation
# Task: Split the penguins dataset by species and save datasets

# load packages
library(palmerpenguins)
library(tidyverse)
library(here)

# check the contents of the data folder using the dir() function
dir("data")

# Save this into the files variable
files <- dir("data")
files

#use the here package to create complete file paths
here("data",files)

file_paths <- here("data",files)

#Read in the species datasets
map(file_paths, read_csv)

#Use the map_dfr function to turn the the results into a data frame
#And to combine all the datasets
map_dfr(file_paths, read_csv)

