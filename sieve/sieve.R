sieve <- function(limit) {
    if(limit < 2){
        return()
    }

    if (limit >= 2) {
        x = seq(2, limit)
        prime_nums = c()
        for (i in seq(2, limit)) {
            if (any(x == i)) {
                prime_nums = c(prime_nums, i)
                x = c(x[(x %% i) != 0], i)
            }
        }
        return(prime_nums)
    } 
}
