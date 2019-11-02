number_type <- function(n){
    if(n <= 0){
        stop("Number is not a natural number!")
    }

    if(n == 1){
        return("deficient")
    }

    aliquotSum = 0
    for(i in 1:(n-1)){
        if(n %% i == 0){
            aliquotSum = aliquotSum + i
        }    
    }
    
    if(aliquotSum == n){
        return("perfect")
    }
    else if (aliquotSum > n) {
        return("abundant")
    }
    else {
        return("deficient")
    }
}