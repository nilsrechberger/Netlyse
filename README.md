# Netlyse

Netlyse is a static report analysis of Netflix movies and series based on R and Quarto. This project is part of the R-Bootcamp at HSLU.

## Project Structure

```bash
.
├── data        # Data directory
├── docs        # Reports
├── .git
├── .gitignore
├── img         # Image directory
├── LICENSE 
├── R           # Main scrips
├── README.md   # This file
├── renv        # Virtual enviroment
├── renv.lock   # Requirements
├── .Rprofile
└── scripts     # Utilities
```

## Idea

TBD

## Render `report.qmd`

Make sure your in the root folder and run:

```bash
quarto render src/report.qmd --output-dir ../docs
```
