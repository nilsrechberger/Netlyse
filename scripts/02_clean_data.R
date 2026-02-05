library(here)
library(readr)
library(dplyr)

clean_data <- read_csv(
    file = here("data", "joined_data.csv"),
    quote = "\"") %>%
    # Remove redundant columns (e.g. keep description.x, but remove description.y)
    select(
        c(
            show_id,
            type.x,
            title,
            director,
            cast,
            country,
            date_added,
            release_year.x,
            listed_in,
            description.x,
            age_certification,
            runtime,
            imdb_id,
            imdb_score,
            imdb_votes
        )
    )

# Save joined data
write_csv(
    x = joined_datasets,
    file = here("data", "clean_data.csv")
)