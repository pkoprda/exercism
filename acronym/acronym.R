acronym <- function(input) {
    pointless_chars <- '[\\_\\-]'
    input = gsub(pattern=pointless_chars,replacement=" ",input)
    input = strsplit(input," ")[[1]]
    acronym = list()
    for(i in 1:length(input)){
        input[i] = substr(input[i],1,1)[[1]]
        acronym = paste(acronym,input[i],sep="")
    }
    acronym = toupper(unlist(acronym))
    return(acronym)
}