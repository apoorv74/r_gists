library(stringr)
colour_gen <- function(){
num_colour <- as.numeric(readline('How many colour you need .. '))
if(num_colour>0){
color <- c(c(seq(0,9)),c('A','B','C','D','E','F'))
color_vector <- c()
for(i in 1:num_colour){
  color_vec <- str_trim(paste0('#',paste0(sample(color,6),collapse = '')))
  color_vector <- c(color_vector,color_vec)
}
return (color_vector)
}
}
