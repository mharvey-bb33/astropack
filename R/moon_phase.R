#' The Moon Phase, it's Meaning & Advice
#'
#' @description
#' Returns the moon phase, interpretation, & suggested energy for the phase.
#'
#' @param date Date string "YYYY-MM-DD"
#'
#' @return List containing date, phase, meaning, advice.
#' @export
#' @import dplyr
#' @importFrom lunar lunar.phase lunar.illumination
#' @examples
#' moon_phase("2025-12-03")
#' moon_phase()   # current date
moon_phase <- function(date = Sys.Date()) {

  if (!requireNamespace("lunar", quietly = TRUE)) {
    stop("The 'lunar' package is required. Install using install.packages('lunar')")
  }

  data("moon_phase_info", envir = environment())

  date <- as.Date(date)

  angle <- (lunar::lunar.phase(date, shift = 0) %% (2*pi)) * (180/pi)

  breaks <- c(0, 10, 80, 100, 170, 190, 260, 280, 350, 360)
  labels <- c(
    "New Moon",
    "Waxing Crescent",
    "First Quarter",
    "Waxing Gibbous",
    "Full Moon",
    "Waning Gibbous",
    "Last Quarter",
    "Waning Crescent",
    "New Moon"
  )

  phase <- cut(angle, breaks = breaks, labels = labels, include.lowest = TRUE, right = FALSE)
  phase <- as.character(phase)

  info <- moon_phase_info[tolower(moon_phase_info$phase) == tolower(phase), ]

  cat(
    paste0(
      "\n🌙 Moon Phase for ", format(date, "%B %d, %Y"), "\n",
      "Phase: ", phase, "\n",
      "Meaning: ", info$meaning, "\n",
      "Advice: ", info$advice, "\n"
    )
  )

  invisible(list(
    date = date,
    angle = round(angle, 2),
    phase = phase,
    meaning = info$meaning,
    advice = info$advice
  ))
}
