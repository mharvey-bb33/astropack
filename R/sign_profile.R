#' Mini Zodiac Sign Profile
#'
#' @param sign Zodiac sign ("Taurus")
#'
#' @return Prints formatted Zodiacal profile + invisible data row.
#' @export
#' @import dplyr
#' @examples
#' sign_profile("Pisces")
sign_profile <- function(sign){
  data("zodiac_data", envir=environment())

  match <- zodiac_data[tolower(zodiac_data$sign) == tolower(sign), ]
  if(nrow(match)==0) stop("Not a valid zodiac sign.")

  cat("\n", match$symbol, "  ", match$sign, "\n",
      "-----------------------------------------\n",
      "Element:         ", match$element, "\n",
      "Modality:        ", match$modality, "\n\n",
      "Strengths:       ", match$traits, "\n",
      "Shadow Traits:   ", match$negative_traits, "\n\n",
      sep="")

  invisible(match)
}
