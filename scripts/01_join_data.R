library(here)
library(readr)
library(dplyr)

# Load data
netflix_ds1 <- read_csv(
    file = here("data", "netflix_titles.csv"),
    quote = "\"")
netflix_ds2 <- read_csv(
    file = here("data", "Netflix TV Shows and Movies.csv"),
    quote = "\"")

# Join data
joined_datasets <- full_join(
    x = netflix_ds1,
    y = netflix_ds2,
    by = "title",
    relationship = "many-to-many"
)

# Save joined data
write_csv(
    x = joined_datasets,
    file = here("data", "joined_data.csv")
)