moon_phase_info <- data.frame(
  phase = c(
    "New Moon", "Waxing Crescent", "First Quarter", "Waxing Gibbous",
    "Full Moon", "Waning Gibbous", "Last Quarter", "Waning Crescent"
  ),
  meaning = c(
    "Fresh start, new beginnings, intention setting.",
    "Momentum building, growth begins, hope and motivation.",
    "Action phase, making decisions, overcoming obstacles.",
    "Refinement and adjustment, improving and preparing.",
    "Peak energy, clarity, emotional illumination, manifestation.",
    "Reflection and sharing, gratitude and integration.",
    "Release phase, letting go, simplifying and clearing space.",
    "Rest and renewal, introspection, quiet healing."
  ),
  advice = c(
    "Set intentions and write down goals.",
    "Take small forward steps toward intentions.",
    "Act boldly and commit to decisions.",
    "Refine plans and improve ongoing projects.",
    "Manifest, celebrate, or release emotional weight.",
    "Express gratitude, reflect on progress.",
    "Release what's no longer serving you.",
    "Rest, recover, meditate, prepare for the new cycle."
  ),
  stringsAsFactors = FALSE
)

usethis::use_data(moon_phase_info, overwrite = TRUE)
