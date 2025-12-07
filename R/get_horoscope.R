#' Get a Horoscope Reading
#'
#' @description
#' Returns a random horoscope text for a given zodiac sign and category.
#' Defaults to "general" (category) horoscope if no category is provided.
#'
#' @param sign Character string. Zodiac sign ("Leo")
#' @param category Character string. "general","love","career","wellness","birthday".
#'
#' @return Prints horoscope & returns the text invisibly.
#' @export
#' @import dplyr
#' @examples
#' get_horoscope("Scorpio")
#' get_horoscope("Virgo","love")
get_horoscope <- function(sign, category = "general") {

  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("The 'dplyr' package is required. Install it using install.packages('dplyr').")
  }

  data("horoscope_saved", envir = environment())

  sign <- tolower(sign)
  category <- tolower(category)

  result <- horoscope_saved[
    horoscope_saved$sign == sign &
      horoscope_saved$category == category,
  ]

  if(nrow(result) == 0){
    stop("Invalid sign or category — check spelling and try again.")
  }

  selected <- result$horoscope[sample(nrow(result), 1)]

  cat(selected)
  invisible(selected)
}
