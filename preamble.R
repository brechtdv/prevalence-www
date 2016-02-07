### Preamble for Rmarkdown files

## attach prevalence package
library(prevalence)
pkg <- packageVersion("prevalence")

## knitr chunk options
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>")

## format double as percentage
percent <-
  function(x, dig = 0) {
    paste0(round(100*x, dig), "%")
  }
