---
Purpose: Download mental health apprehension data from opendatatoronto 
author: Mary Cheng
Date: 19 January 2024
Contact: maryc.cheng@mail.utoronto.ca
---

```{r}
# workspace setup
library(tidyverse)
library(dplyr)
library(opendatatoronto)
```

```{r}
# download the mental health act apprehension data from opentoronto
package <- show_package("mental-health-apprehensions")

resources <- list_package_resources("mental-health-apprehensions")

mental_health_data <- get_resource(resource ="4a92540b-6504-4b25-827d-4511b8b9f3d9")
mental_health_data
```

```{r}
# Save data
write_csv(x = mental_health_data,
          file = "inputs/data/unedited_data.csv")
```
