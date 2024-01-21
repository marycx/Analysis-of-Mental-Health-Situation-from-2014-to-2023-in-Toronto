---
purpose: "Clean the mental health apprehension dataset that was downloaded from opentoronto, and select the data that I interest."
author: "Mary Cheng"
Contact: maryc.cheng@mail.utoronto.ca
date: 20 January 2023
---

```{r}
# workspace setup; first install then load
install.packages("tidyverse")
install.packages("dplyr")
install.packages("janitor")
library(tidyverse)
library(dplyr)
library(janitor)
```

```{r}
# Read in raw data
mental_health_data = read_csv(file = "inputs/data/unedited_data.csv", show_col_types = FALSE)
```

```{r}
# Clean data

# make the names snake case
mental_health_data_cleaned = clean_names(mental_health_data)

# select the rows of interest
mental_health_data_cleaned = 
  mental_health_data_cleaned |>
  select(
    occ_year,
    sex,
    age_cohort,
    premises_type
  )
```

```{r}
# Rename the column names so it is easy to understand
mental_health_data_cleaned <-
  mental_health_data_cleaned |>
  rename(
    occurred_year = occ_year,
    sex = sex,
    age_group = age_cohort,
    premises_type = premises_type
  )
```

```{r}
# save the cleaned csv file
write_csv(mental_health_data_cleaned, "inputs/data/cleaned_data.csv")
```

## 
