to_rna <- function(dna) {
  if((grepl('[^CGTA]',dna,perl = TRUE)) == TRUE){
        stop("Incorrect input!")
    }

    complements = ""
    i = 1
    while(i <= nchar(dna)){
        switch(substr(dna,i,i),
            "G" = { complements = paste(complements, "C", sep = "")},
            "C" = { complements = paste(complements, "G", sep = "")},
            "T" = { complements = paste(complements, "A", sep = "")},
            "A" = { complements = paste(complements, "U", sep = "")}
        )
        i = i + 1
    }

    return(complements)
}
