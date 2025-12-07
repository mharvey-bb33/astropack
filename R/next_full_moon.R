#' Find the Date of the Next Full Moon
#'
#' @description
#' Searches from a given date until the next Full Moon window is found.
#'
#' @param start_date Date to start searching from.
#' @return Date of next full moon
#' @export
#' @importFrom lunar lunar.phase
#' @examples
#' next_full_moon()    #Current date
#' next_full_moon("2025-7-8")
next_full_moon <- function(start_date = Sys.Date()) {

  if (!requireNamespace("lunar", quietly = TRUE)) {
    stop("The 'lunar' package is required. Install with install.packages('lunar').")
  }

  start_date <- as.Date(start_date)
  date_check <- start_date

  repeat {
    angle <- (lunar::lunar.phase(date_check, shift = 0) %% (2*pi)) * (180/pi)

    if (angle >= 170 & angle <= 190) {
      cat(
        paste0(
          "\n🌕 The next full moon after ", format(start_date, "%B %d, %Y"),
          " will be on ", format(date_check, "%B %d, %Y"), " 🌕\n\n"
        )
      )
      return(invisible(date_check))
    }

    date_check <- date_check + 1
  }
}
