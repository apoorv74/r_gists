quantile_func <- function(min_num,max_num,div_num,type = 'number'){
  master <- c()
  interval <- seq(0,1,div_num)
  if(div_num <= 1){
    for(i in 1:length(interval)){
      num_seq <- seq(min_num,max_num)
      temp <- as.vector(quantile(num_seq,interval[i]))
      temp <- ifelse(type == 'percent',temp/100,temp)
      master <- c(master,temp)
    }
     cat(paste0('[',paste0(master,collapse = ','),']'))
  }
}
