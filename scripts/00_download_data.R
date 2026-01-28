urls <- c(
  "netflix-shows" = "https://www.kaggle.com/api/v1/datasets/download/shivamb/netflix-shows",
  "netflix-imdb"  = "https://www.kaggle.com/api/v1/datasets/download/thedevastator/netflix-imdb-scores"
)

data_dir <- "data"

if (!dir.exists(data_dir)) dir.create(data_dir)

message("Start data download...")

for (name in names(urls)) {
  url <- urls[name]
  zip_path <- file.path(data_dir, paste0(name, ".zip"))

  message("Download: ", name)

  tryCatch({
    download.file(url, destfile = zip_path, mode = "wb", quiet = TRUE)
    unzip(zip_path, exdir = data_dir)
  }, error = function(e) {
    warning("Error: ", name, " - ", e$message)
  })
}

message("Finish download data!")