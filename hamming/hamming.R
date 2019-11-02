# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
    if(nchar(strand1) != nchar(strand2)){
        stop("Length of the strands are not equal!")
    }

    diff.strand1 <- unlist(strsplit(strand1,split=""))
    diff.strand2 <- unlist(strsplit(strand2,split=""))
    diff.d <- rbind(diff.strand1,diff.strand2)
    differences <- sum(diff.d[1,] != diff.d[2,])
    return(differences)
}
