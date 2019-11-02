allergy <- function(num) {
    allergies = c()

    while(num > 0){
        help_iter = iter = power = 1
        while(TRUE){
            if((help_iter = 2 ^ power) > num){
                break
            }
            help_iter = iter = 2 ^ power
            power = power + 1
        }
        
        allergies = switch(
            as.character(iter),
            "1"= c(allergies,"eggs"),
            "2" = c(allergies,"peanuts"),
            "4" = c(allergies,"shellfish"),
            "8" = c(allergies,"strawberries"),
            "16" = c(allergies,"tomatoes"),
            "32" = c(allergies,"chocolate"),
            "64" = c(allergies,"pollen"),
            "128" = c(allergies,"cats")
        )
        num = num - iter
    }

    return(allergies)

}

allergic_to <- function(allergy_object, allergy) {
    
    if(length(allergy_object) == 0){
        return(FALSE)
    }

    for(i in 1:length(allergy_object)) {
        if(allergy_object[i] == allergy){
            return(TRUE)
        }
    }
    return(FALSE)
}

list_allergies <- function(allergy_object) {
    if(length(allergy_object) == 0){
        return(character())
    }

    return(allergy_object)
}
