#' Check if Mercury is in Retrograde on a Date
#'
#' @description
#' Determines whether Mercury is in retrograde on a given date & prints interpretation. Contains data from 2025-2030.
#'
#' @param date Character or Date.
#'
#' @return Displays given date, its Mercury retrograde status and an interpretation. Displays TRUE/FALSE invisibly (retrograde status).
#' @export
#' @import dplyr
#' @examples
#' is_retrograde("2025-03-19")
#' is_retrograde()    #Current date
is_retrograde <- function(date = Sys.Date()) {

  date <- as.Date(date)
  data("mercury_retrograde", envir = environment())

  retro <- any(date >= mercury_retrograde$start & date <= mercury_retrograde$end)

  if (retro) {

    cat(
      paste0(
        "\n🪐 Mercury is in Retrograde on ", format(date, "%B %d, %Y"), "\n",
        "------------------------------------------------\n",
        "Meaning: Communication slows, conflicts arise, and misunderstandings may increase.\n",
        "Advice: Double-check messages, travel plans, tech backups.\n",
        "Energy: Reflect, review, revise — avoid major contracts if possible. Tie up any loose ends. \n\n"
      )
    )

    return(invisible(TRUE))

  } else {

    cat(
      paste0(
        "\n✨ Mercury is Direct on ", format(date, "%B %d, %Y"), "\n",
        "----------------------------------------------\n",
        "Meaning: Communication & travel flow more smoothly.\n",
        "Advice: Good time to launch projects, speak clearly, take action.\n",
        "Energy: There is forward momentum — express, create, sign & send.\n\n"
      )
    )

    return(invisible(FALSE))
  }
}

