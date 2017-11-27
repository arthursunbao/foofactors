#' Check whether the input is a factor
#'
#' This is a function which is used to double check whether the input is a factor
#' or not and will return the true or false judgement
#'
#' @param a input
#'
#' @return true: if it is a factor; false: if it is not a factor
#' @export
#' @examples a <- check_factor(c("character", "hits", "your", "eyeballs")) # This is not a factor
#' @examples b <- check_factor(c("but", "integer", "where it", "counts", "but")) # This is a factor

check_factor <- function(a) {
  if(!is.factor(a)){
    stop('Wrong input, Please kindly help to double check the input class type')
  }
  if(length(unique(a))!=length(a)){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
}
