# R data package for tidy ANZSCO definitions

The Australian Bureau of Statistics and Statistics New Zealand use a 
number of common definitions.

Occupations and their hierarchy are defined by the 
[Australian and New Zealand Standard Classification of Occupations, 2013, Version 1.2](http://www.abs.gov.au/ANZSCO)

The package was made using [DataPackageR](https://github.com/ropensci/DataPackageR)
and loosely follows the process described by Greg Finak [here](https://ropensci.org/blog/2018/09/18/datapackager/)

The script `data-raw/tidy_anzsco.Rmd` loads the definitions spreadsheet provided by ABS and StatsNZ and
converts it into per-occupation long-form.

## Use in R

- Install devtools `install.packages('devtools')`
- Install ANZSCO from github `devtools::install_github('nzherald/ANZSCO')`
- Load the ANZSCO package `library(ANZSCO)`

### Why?

Use this when you have occupation data and you want to be able to group
the higher level categories

```
library(tidyverse)
library(ANZSCO)

data <- read_csv(SOME_OCCUPATION_DATA) %>% 
  left_join(anzsco, by=c(OCCUPATION_COLUMN=Occupation))
```

This will create a data frame where each row also has all of its ANZSCO definitions.

If you are not working with occupation level data just group the anzsco data accordingly.

```
minor_groups <- anzsco %>% group_by(Major.Group, Sub.Major.Group, Minor.Group)
```

The `anzsco` data frame also contains columns with the numeric identifiers for each occupation etc.

## Use elsewhere

There is a CSV copy of the tidy data `inst/extdata/anzsco.csv`


# License

The code is released under and MIT licence and the data is available under a creative commons attribution license.

The data was originally licensed as 

- [© Commonwealth of Australia 2013](http://www.abs.gov.au/websitedbs/d3310114.nsf/Home/%C2%A9+Copyright?OpenDocument)
- [© Crown Copyright New Zealand 2013](https://www.stats.govt.nz/about-us/copyright/?url=/about_us/about-this-site/copyright-terms-of-use.aspx)


