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
doc_fun <-
  function(x) {
    sprintf("[`%1$s`](?main=functions&sub=%1$s)", x)
  }

doc_help <-
  function(x) {
    sprintf("[`%1$s`](?main=help&sub=%1$s)", x)
  }

## arg table
arg_table <-
  function(...) {
    args <- list(...)
    
    cat("<table>\n")
    cat("<tbody>\n")
    cat(sprintf(" <tr>\n  <td>`%1$s`</td>\n  <td>%2$s</td>\n </tr>\n",
                names(args), args),
        sep = "")
    cat("</table>")
  }
