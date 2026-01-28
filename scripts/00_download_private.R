# Check data folder
if (!dir.exists("data")) {
  stop("data/ folder does not exist.")
}

# Required datasets
files_needed <- c(
  "data/netflix_titles.csv",
  "data/Netflix TV Shows and Movies.csv"
)

missing <- files_needed[!file.exists(files_needed)]

if (length(missing) > 0) {
  stop(
    "Missing dataset(s):\n",
    paste(missing, collapse = "\n")
  )
}

# Load datasets to confirm access
netflix_1 <- read.csv("data/netflix_titles.csv", stringsAsFactors = FALSE)
netflix_2 <- read.csv("data/Netflix TV Shows and Movies.csv", stringsAsFactors = FALSE)

cat("✅ All datasets are present and readable\n")
cat("Dataset 1 rows:", nrow(netflix_1), "\n")
cat("Dataset 2 rows:", nrow(netflix_2), "\n")
