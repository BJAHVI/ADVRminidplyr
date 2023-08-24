#' selectr 
#' 
#' selects a subset of columns
#'
#' @param df a dataframe
#' @param x a vector of numeric indice(s) or character string(s)
#'
#' @return returns a data frame with a subset of columns
#'
#' @examples
#' # returns the first column of mtcars
#' selectr(mtcars,1)
#' 
#' # returns the first column of mtcars
#' selectr(mtcars,"mpg")
#' 
#' 
#' # returns the 2nd and 3rd column of mtcars
#' selectr(mtcars,c(2,3)) 
#'
#' @export
selectr <- function(df,var){
  df[var]
}