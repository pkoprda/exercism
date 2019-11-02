handshake <- function(n) {
    if(n == 0 | n == 16 | n > 31){
        return()
    }

    binary <-  rev(as.integer(head(intToBits(n), 5)))
    list_data = vector()

    if(binary[5] == "1"){
        new_elem <- "wink"
        list_data <- c(list_data,new_elem)
    }
    if(binary[4] == "1"){
        new_elem <- "double blink"
        list_data <- c(list_data,new_elem)
    }
    
    if(binary[3] == "1"){
        new_elem <- "close your eyes"
        list_data <- c(list_data,new_elem)
    }

    if(binary[2] == "1"){
        new_elem <- "jump"
        list_data <- c(list_data,new_elem)
    }

    if(binary[1] == "1"){
        list_data <- rev(list_data)
    }

    return(list_data)
}
