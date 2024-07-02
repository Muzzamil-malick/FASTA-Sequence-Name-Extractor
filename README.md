# FASTA Sequence Name Extractor

This repository contains an R script to extract sequence names from a FASTA file and save them to an Excel file. This tool is useful for researchers and bioinformaticians who need to extract and organize sequence names from large FASTA files.

## Features

- Extracts sequence names from FASTA files.
- Saves extracted sequence names to an Excel file.

## Requirements

- R (version 4.0 or later)
- RStudio (optional but recommended)

### R Packages

The following R packages are required to run the script:

- Biostrings (from Bioconductor)
- openxlsx

You can install these packages using the following commands:

```r
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("Biostrings")

install.packages("openxlsx")
