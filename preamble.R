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
  function(..., quote = TRUE) {
    args <- list(...)
    
    cat("<table>\n")
    cat("<tbody>\n")
    if (quote) {
      cat(
sprintf(" <tr vAlign='top'>
  <td>`%1$s`</td>
  <td>%2$s</td>
 </tr>\n",
        names(args), args),
sep = "")

    } else {
      cat(
sprintf(" <tr vAlign='top'>
  <td>%1$s</td>
  <td>%2$s</td>
 </tr>\n",
        names(args), args),
sep = "")
    }
    cat("</table>")
  }
