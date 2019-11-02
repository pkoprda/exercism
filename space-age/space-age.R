space_age <- function(seconds, planet) {
    EARTH_YEAR = 31557600
    switch(planet,
        earth = { planetYear = EARTH_YEAR },
        mercury = { planetYear = 0.2408467 * EARTH_YEAR },
        venus = { planetYear = 0.61519726 * EARTH_YEAR },
        mars = { planetYear = 1.8808158 * EARTH_YEAR },
        jupiter = { planetYear = 11.862615 * EARTH_YEAR },
        saturn = { planetYear = 29.447498 * EARTH_YEAR },
        uranus = { planetYear = 84.016846 * EARTH_YEAR },
        neptune = { planetYear = 164.79132 * EARTH_YEAR },
    )

    age = seconds / planetYear
    return(round(age,digits=2)) 
}
