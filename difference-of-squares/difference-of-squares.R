# this is a stub function that takes a natural_number
# and should return the difference-of-squares as described
# in the README.md
difference_of_squares <- function(natural_number) {
    square_sum = sum_squares = 0

    while(natural_number >= 0){
        square_sum = square_sum + natural_number
        sum_squares = sum_squares + natural_number^2
        natural_number = natural_number - 1
    }
    square_sum = square_sum ^ 2
    
    diff = square_sum - sum_squares
    return(diff)
}
