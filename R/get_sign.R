#' Determine Zodiac Sign from Birth Month & Day
#'
#' @description
#' Returns a zodiac sign based on a given birth day (month & day only).
#'
#' @param b_m Numeric month (1-12)
#' @param b_d Numeric day (1-31)
#'
#' @return Character string representing the zodiac sign.
#' @export
#' @import dplyr
#' @importFrom lubridate month day
#' @examples
#' get_sign(2, 27)
#' get_sign(6, 3)
get_sign <- function(b_m, b_d) {

  if (!requireNamespace("dplyr", quietly = TRUE)) {
    stop("The 'dplyr' package is required. Install it using install.packages('dplyr').")
  }
  if (!requireNamespace("lubridate", quietly = TRUE)) {
    stop("The 'lubridate' package is required. Install it using install.packages('lubridate').")
  }

  data("zodiac_dates", envir = environment())

  template <- as.Date(sprintf("2025-%02d-%02d", b_m, b_d))

  zodiac_table <- zodiac_dates %>%
    mutate(
      start_adj = as.Date(paste0("2025-", format(start_date, "%m-%d"))),
      end_adj   = as.Date(paste0("2025-", format(end_date, "%m-%d")))
    ) %>%
    mutate(
      start_adj = ifelse(sign_name == "Capricorn" & month(start_adj)==12, as.Date("2024-12-22"), start_adj),
      end_adj   = ifelse(sign_name == "Capricorn" & month(end_adj)==1,  as.Date("2025-01-20"), end_adj)
    )

  sign <- zodiac_table %>%
    filter(template >= start_adj & template <= end_adj) %>%
    pull(sign_name)

  return(sign)
}

