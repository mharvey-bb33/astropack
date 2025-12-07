#' Get the Modality of a Zodiac Sign
#'
#' @param sign Zodiac sign
#'
#' @return Character modality string of three categories: "Cardinal", "Fixed", "Mutable".
#' @export
#' @examples
#' modality("Scorpio")
modality <- function(sign) {
  data("zodiac_data", envir=environment())

  match <- zodiac_data[tolower(zodiac_data$sign) == tolower(sign), ]
  if(nrow(match) == 0) stop("Not a valid zodiac sign. Try again")

  message <- paste0("The modality of ", match$sign, " is: ", match$modality)
  cat(message, "\n")

  invisible(match$modality)
}
