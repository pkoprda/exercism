raindrops <- function(number) {
    increment = 1
    text = ""
    number = as.numeric(number)
    while(increment <= number){
        if(number %% increment == 0){
            if(increment == 3){
                text = paste(text, "Pling", sep = "")
            }
            else if (increment == 5) {
               text = paste(text, "Plang",sep = "")
            }
            else if (increment == 7) {
               text = paste(text, "Plong",sep = "")
            }
        }

        increment = increment + 1
    }

    if(text == ""){
        return(as.character(number))
    }
    else{
        return(text)
    }
}
