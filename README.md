# Netlyse

Netlyse is a static report analysis focusing on Netflix movies and series. The project leverages R and Quarto to provide data-driven insights into the streaming giant's content library. This analysis was developed as part of the R-Bootcamp at the Lucerne University of Applied Sciences and Arts [HSLU](https://www.hslu.ch/en/).

## Project Structure

The repository is organized as follows:

```bash
.
├── docs
│   └── report.pdf          # Rendered project report in PDF format
├── img
│   └── project_plan.png    # Visual representation of the project plan
├── LICENSE                 # License information
├── README.md               # Project documentation and setup guide
├── renv                    # Local R library managed by renv
├── renv.lock               # Lockfile for reproducible dependencies
├── scripts                 # Utility R scripts for the data pipeline
│   ├── 00_download_data.R  # Fetches raw data from sources
│   ├── 01_join_data.R      # Merges disparate datasets
│   └── 02_clean_data.R     # Performs data cleaning and transformation
└── src
    └── report.qmd          # Main Quarto document containing the analysis

```

## Setup and Installation

This project uses `renv` to ensure a reproducible environment. Follow these steps to set up the project locally.

### Clone Repository

```bash
git clone https://github.com/nilsrechberger/Netlyse.git
cd Netlyse
```

### Initialize Dependencies

Open R within the project root directory. The `renv` package will bootstrap itself automatically. To install all required packages, run:

```R
renv::restore()
```

Rendering the Report

To generate the final report, use the Quarto CLI directly in your terminal. Navigate to the project root and execute the following command:

```bash
quarto render src/report.qmd --output-dir ../docs
```

## License

This project is licensed under the terms found in the LICENSE file.
