parse_phone_number <- function(number_string) {
    if((grepl('[^\\d\\.\ \\(\\)\\-]',number_string, perl = TRUE)) == TRUE){
        return()
    }

    pointless_chars <- '[\\(\\)\\.\\ \\-]'
    number_string <- gsub(pattern=pointless_chars,replacement="",number_string)

    if(nchar(number_string) == 11){
        if(substr(number_string,1,1) == "1"){
            return(substr(number_string,2,11))
        }
        
        return()
    }

    else if(nchar(number_string) == 10){
        if((regexpr('[2-9]',substring(number_string,1,1))) == -1 
        || (regexpr('[2-9]',substring(number_string,4,4))) == -1){
            return()
        }
        else{
            return(number_string)
        }
    }

    else{
        return()
    }  
}
