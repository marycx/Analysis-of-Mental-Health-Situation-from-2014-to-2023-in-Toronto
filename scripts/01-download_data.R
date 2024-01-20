---
Purpose: Download and clean mental health apprehension data from opendatatoronto 
author: Mary Cheng
Date: 19 January 2024
Contact: maryc.cheng@mail.utoronto.ca
---


```{r}
# Install required packages for data download
install.packages("tidyverse")
install.packages("dplyr")
install.packages("opendatatoronto")
```

```{r}
# workspace setup
library(tidyverse)
library(dplyr)
library(opendatatoronto)
```

```{r}
# Download data from opentoronto
# get package
package <- show_package("mental-health-apprehensions")
	
package
	
# get all resources for this package
resources <- list_package_resources("mental-health-apprehensions")
	
# identify datastore resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))
	
# load the first datastore resource as a sample
mental_health_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
	
mental_health_data
```

```{r}
# Save data
write.csv(x = mental_health_data,
          file = "inputs/data/unedited_data.csv")
```

```{r}

```
