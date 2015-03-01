#' corrvis
#'
#' Visualize a correlation matrix using the corrplot library's corrplot function, with color and other options from code in the R Graphics Cookbook by Winston Chang.
#' @param mycorrmatrix A correlation matrix created by R's cor function.
#' @keywords correlation
#' @export
#' @examples
#' mycors <- cor(df)
#' corrvis(mycors)

corrvis <- function(mycorrmatrix){
  col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
  corrplot::corrplot(mycorrmatrix, method="shade", shade.col=NA, tl.col="black", tl.srt=45, col=col(200), addCoef.col="black")
}
