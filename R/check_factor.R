#' Check whether the input is a factor
#'
#' This is a function which is used to double check whether the input is a factor
#' or not and will return the true or false judgement
#'
#' @param a input
#'
#' @return true: if it is a factor; false: if it is not a factor
#' @export
#'
#' @examples check_factor(factor(c("hits","hits","your", "eyeballs")))
#' @examples check_factor(factor(c("but","integer", "where it", "counts", "but")))

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
