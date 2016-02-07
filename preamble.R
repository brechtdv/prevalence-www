### Preamble for Rmarkdown files

### Settings

## attach prevalence package
library(prevalence)
pkg <- packageVersion("prevalence")

## knitr chunk options
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>")

### Utility functions

## format double as percentage
percent <-
  function(x, dig = 0) {
    paste0(round(100*x, dig), "%")
  }

## create documentation link
doc <-
  function(x) {
    sprintf("[`%1$s`](?main=docs&sub=%1$s)", x)
  }
