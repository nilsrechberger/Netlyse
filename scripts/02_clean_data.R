library(readr)
library(dplyr)

clean_data <- read_csv(
    file = "data/joined_data.csv",
    quote = "\"") %>%
    # Remove redundant columns (e.g. description.x, description.y)
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
write_csv(joined_datasets, "data/clean_data.csv")