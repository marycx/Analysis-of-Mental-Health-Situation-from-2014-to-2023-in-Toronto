---
purpose: "Test the cleaned dataset"
author: "Mary Cheng"
Contact: maryc.cheng@mail.utoronto.ca
date: 22 January 2023
---

```{r}
# Workspace set-up
library(tidyverse)
```

```{r}
# load data
test_mental_health_data = read_csv(
  file = here("inputs/data/cleaned_data.csv"),
  show_col_types = FALSE
)
```

```{r}
# Start testing

# Test if "sex" is exclusively one of these two: "Male" or "Female"
test_mental_health_data$sex |>
  unique() == c("Male", "Female")

# Test if "occurred_year" is a numeric value, not a character
test_mental_health_data$occurred_year |> class() == "numeric"

# Test if "age_group" contains all 6 categories
test_mental_health_data$age_group |>
  unique() |>
  length() == 6

# Test if "premises_type" contains all 7 categories
test_mental_health_data$premises_type |>
  unique() |>
  length() == 7
```

## 
