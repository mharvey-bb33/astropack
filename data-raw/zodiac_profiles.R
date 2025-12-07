zodiac_data <- data.frame(
  sign = c("Aries","Taurus","Gemini","Cancer","Leo","Virgo",
           "Libra","Scorpio","Sagittarius","Capricorn","Aquarius","Pisces"),

  element = c("Fire","Earth","Air","Water","Fire","Earth",
              "Air","Water","Fire","Earth","Air","Water"),

  modality = c("Cardinal","Fixed","Mutable","Cardinal","Fixed","Mutable",
               "Cardinal","Fixed","Mutable","Cardinal","Fixed","Mutable"),

  traits = c(
    "Bold, impulsive, energetic, competitive.",
    "Grounded, patient, sensual, loyal.",
    "Social, witty, curious, adaptable.",
    "Emotional, nurturing, intuitive, protective.",
    "Confident, charismatic, dramatic, creative.",
    "Analytical, practical, detail-oriented, modest.",
    "Balanced, charming, diplomatic, partnership-focused.",
    "Intense, private, magnetic, transformative.",
    "Optimistic, adventurous, philosophical, free-spirited.",
    "Disciplined, ambitious, mature, structured.",
    "Original, eccentric, intellectual, humanitarian.",
    "Dreamy, compassionate, artistic, spiritual."
  ),

  negative_traits = c(
    "Impulsive, impatient, aggressive, hot-headed.",
    "Stubborn, possessive, indulgent, slow-moving.",
    "Inconsistent, scattered, gossipy, restless.",
    "Moody, clingy, defensive, overly sensitive.",
    "Arrogant, attention-seeking, domineering.",
    "Critical, perfectionist, anxious, nitpicky.",
    "Indecisive, people-pleasing, avoids confrontation.",
    "Jealous, controlling, secretive, obsessive.",
    "Blunt, reckless, commitment-averse, preachy.",
    "Cold, rigid, work-obsessed, pessimistic.",
    "Detached, unpredictable, rebellious, aloof.",
    "Escapist, overly trusting, vague, avoids reality."
  ),

  symbol = c(
    "♈", "♉", "♊", "♋", "♌", "♍",
    "♎", "♏", "♐", "♑", "♒", "♓"
  ),

  stringsAsFactors = FALSE
)

usethis::use_data(zodiac_data, overwrite = TRUE)
