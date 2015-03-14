#' Create an xts object from a common data-frame format.
#'
#' Time-series objects can be confusing for the R date/time beginner. This is one way to create an xts object -- class extensible time series (from the zoo package) -- from a data frame containing one column of dates and the rest data.
#'
#' The resulting xts object can be easily graphed using dygraphs::dygraph(myxtsobject)
#'
#' @param mydf A data frame with the first column containg dates, rest of  columns containing data you want. Date column must be in yyyy-mm-dd format, either as character or Date objects.
#'
#' @keywords time series, xts
#' @export
#' @examples
#' month = c("2014-01-01", "2014-02-01", "2014-03-01", "2014-04-01", "2014-05-01", "2014-06-01", "2014-07-01", "2014-08-01", "2014-09-01", "2014-10-01", "2014-11-01", "2014-12-01")
#' rate = c(6.6, 6.7, 6.6, 6.2, 6.3, 6.1, 6.2, 6.1, 5.9, 5.7, 5.8, 5.6)
#' unemp <- data.frame(month, rate, stringsAsFactors = FALSE )
#'
#' unemp.xts <- df_to_xts(unemp)
#' # With dygraphs library installed, can then graph this with
#' # dygraphs::dygraph(unemp.xts)

df_to_xts <- function(mydf){
  library(xts)
  if(is.character(mydf[[1]])){
    mydf[[1]] <- as.Date(mydf[[1]])
  }
  myxts <- as.xts(mydf[,-1], order.by = mydf[,1])
  allnames <- names(mydf)
  colnames(myxts) <- allnames[-1]
  return(myxts)
}
