anagram <- function(subject, candidates) {
    list.anagrams = list()
    subject.sorted = sort(unlist(strsplit(subject,split="")))
    subject.low.sorted = tolower(subject.sorted)
    subject.lower = tolower(subject)
    
    for (candidate in candidates) {
        if(nchar(subject) != nchar(candidate)){
            next
       }
       
       candidate.sorted = sort(unlist(strsplit(candidate,split="")))
       candidate.low.sorted = tolower(candidate.sorted)
       candidate.lower = tolower(candidate)

       if(!identical(subject.lower,candidate.lower)){
           if (identical(subject.low.sorted,candidate.low.sorted)) {
                list.anagrams = c(list.anagrams,candidate)
                list.anagrams = unlist(list.anagrams)
           }
       }       
    }
    
    if(is.list(list.anagrams) & length(list.anagrams) == 0){
        return()
    }

    return(list.anagrams)
}
