---
title: "Download mental health apprehension dataset from opentoronto"
author: "Mary Cheng"
Date: 19 January 2024
Contact: maryc.cheng@mail.utoronto.ca
---

```{r}
# Install required packages
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
# Since I am using Posit Cloud and this csv file is huge, Posit Cloud will only include 32000 entries. Therefore, I decide to do some basic selection here regarding the years. I am going to select 2012 - 2016 to analyze.
mental_health_data <- mental_health_data %>% filter(OCC_YEAR == "2011" | OCC_YEAR == "2012" | OCC_YEAR == "2013" | OCC_YEAR == "2014" | OCC_YEAR == "2015" | OCC_YEAR == "2016")
```

```{r}
# Save data
write.csv(x = mental_health_data,
          file = "inputs/data/unedited_data.csv")
```
