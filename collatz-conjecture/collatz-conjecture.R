collatz_step_counter <- function(num) {
    if (num < 1) {
       stop("Input number must be greater than 0!")
    }

    vr = vector()
    help_num = num
    
    for(i in 1:length(num)){
        steps_counter = 0
        help_num = num[i]
        while(help_num > 1){
            steps_counter = steps_counter + 1
            if(help_num %% 2 == 0){
                help_num = help_num / 2
            }
            else{
                help_num = 3*help_num + 1
            }
        }
        vr = c(vr,steps_counter)
    }

    return(vr)
}
