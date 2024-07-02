# Install required packages if not already installed
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("Biostrings")

if (!requireNamespace("openxlsx", quietly = TRUE))
  install.packages("openxlsx")

# Load the required libraries
library(Biostrings)
library(openxlsx)

# Function to extract sequence names from FASTA file
extract_fasta_names <- function(fasta_file) {
  sequences <- readDNAStringSet(fasta_file)
  names(sequences)
}

# Function to create an Excel file with sequence names
create_excel_file <- function(names, excel_file) {
  data <- data.frame("Sequence Name" = names)
  write.xlsx(data, excel_file, row.names = FALSE)
  cat("Excel file '", excel_file, "' created successfully!\n")
}

# Main script
fasta_file <- "F:/your_input.fasta"  # Change this to the path of your FASTA file on the F drive
excel_file <- "F:/output.xlsx"  # Change this to the desired output Excel file name on the F drive

sequence_names <- extract_fasta_names(fasta_file)
create_excel_file(sequence_names, excel_file)
