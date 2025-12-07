#' Get the Element of a Zodiac Sign
#'
#' @param sign Zodiac sign ("Capricorn")
#'
#' @return Character element string of four categories: "Air", "Earth", "Fire", "Water".
#' @export
#' @examples
#' element("Leo")
element <- function(sign) {
  data("zodiac_data", envir=environment())

  match <- zodiac_data[tolower(zodiac_data$sign) == tolower(sign), ]
  if(nrow(match) == 0) stop("Not a valid zodiac sign. Try again")

  message <- paste0("The element of ", match$sign, " is: ", match$element)
  cat(message, "\n")

  invisible(match$element)
}
