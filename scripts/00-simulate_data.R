---
purpose: "Simulate dataset of Mental Health Act apprehension in Toronto from 2014 to 2023"
author: "Mary Cheng"
Contact: maryc.cheng@mail.utoronto.ca
date: 22 January 2023
---

```{r}
# workspace setup
library(tidyverse)
```

```{r}
# set seed in order to produce same output
set.seed(63)
```

```{r}
# Create 25 sample data entries with 4 data features (occurred_year, sex, age_group, premises_type)

simulate_data <-
  tibble(
    occurred_year = sample(x = 2014:2023, size = 25, replace = TRUE),
    sex = sample(x = c("male", "female"), size = 25, replace = TRUE),
    age_group = sample(x = c("18 to 24", "25 to 34", "35 to 44", "45 to 54", "55 to 64", "65+"), size = 25, replace = TRUE),
    premises_type = sample(x = c("Apartment", "Commercial", "Educational", "House", "Other", "Outside", "Transit"), size = 25, replace = TRUE),
  )

simulate_data
```

## 
