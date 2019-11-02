square <- function(n) {
    if(n <= 0 | n > 64){
        stop("Wrong number of squares")
    }

    grains = 2**(n-1)
    return(grains)
}

total <- function() {
    sum = 0
    for(i in 1:64){
        sum = sum + square(i)
    }
    return(sum)
}
