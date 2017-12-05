#' Sort the factor in descending order
#'
#' This is a function is used to sort the input facotr into descending order
#'
#' @param a input
#'
#' @return the descending sorted order factor
#' @export
#'
#' @examples sort_factor(factor(c("hits", "hits", "your", "eyeballs")))

sort_factor <- function(a) {
  if(!is.factor(a)){
    stop('Wrong input, Please kindly help to double check the input class type')
  }
  stats::reorder(a, dplyr::desc(a))
}
