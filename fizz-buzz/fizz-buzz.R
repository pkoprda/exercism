fizz_buzz <- function(input) {
    output = list()
    for (i in 1:input) {
       if(i %% 3 == 0){
           if(i %% 5 == 0){
               output = c(output,"Fizz Buzz")
           }
           else{
               output = c(output,"Fizz")
           }
       }
       else if(i %% 5 == 0){
           output = c(output,"Buzz")
       }
       else{
           output = c(output,i)
       }
    }
    
    return(unlist(output))
}
