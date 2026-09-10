#----------------------------------------------------------#
#
#                         L00
#
#       Exact glossary lookup for glossary 1.0.0
#
#----------------------------------------------------------#

#' Render a glossary term using an exact YAML key
#'
#' The glossary 1.0.0 lookup uses substring matching. This wrapper reads the
#' canonical YAML record by its exact key so entries such as `pozorovani` and
#' `jednotka-pozorovani` stay distinct. If the glossary is unavailable, it
#' returns the visible text and keeps the lesson usable offline.
#'
#' @param slug Character scalar. Exact glossary slug.
#' @param display Character scalar. Text shown to the reader.
#'
#' @return HTML glossary markup, or plain display text outside HTML and on
#'   lookup failure.
render_glossary_term <- function(slug, display = slug) {
  if (!knitr::is_html_output()) {
    return(display)
  }

  glossary_file <-
    glossary::glossary_path()

  if (
    is.null(glossary_file) ||
      !file.exists(glossary_file)
  ) {
    return(display)
  }

  glossary_records <-
    tryCatch(
      yaml::read_yaml(glossary_file),
      error = function(e) NULL
    )
  glossary_record <-
    glossary_records[[slug]]

  if (is.null(glossary_record)) {
    return(display)
  }

  definition <-
    if (is.list(glossary_record)) {
      glossary_record[["def"]]
    } else {
      glossary_record
    }

  if (
    is.null(definition) ||
      !nzchar(trimws(definition))
  ) {
    return(display)
  }

  glossary::glossary(
    term = slug,
    display = display,
    def = definition,
    popup = "click"
  )
}
