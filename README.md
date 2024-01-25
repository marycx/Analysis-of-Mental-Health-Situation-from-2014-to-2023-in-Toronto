# Analysis-of-Mental-Health-Situation-from-2014-to-2023-in-Toronto
This repository contains input data, scripts, output for my report on mental health situation analysis in Toronto from 2014 to 2023. A dataset from opendatatoronto called "Mental Health Act Apprehension" was analyzed and discussed in the paper. The LLMs are not used in this report.

# File Structure
The repository is organized as follows:
1. scripts: contains R scripts used for data simulating, downloading, cleaning, and testing.
2. inputs: contains raw data and cleaned data.
3. outputs: contains a rmd file with R code, a pdf of the paper, and a bibliogrpahy file for references.

# Reproduce Report Steps
1. Run /scripts/01-download_data.R to get raw data.
2. Run /scripts/02-clean_data.R to get the cleaned data.
3. Run /scripts/03-test_data.R to test data.
4. Run /outputs/paper/paper.qmd to generate the report.
