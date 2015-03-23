#' interactive_histogram
#'
#' Takes a basic ggvis histogram and adds an interactive slider to control bin width.
#'
#'  @param myBasicHistogram a ggiv histogram such as ggvis(mydf, x = ~xcolumn, fill := "gray")
#'  binMin number, the minimum bin width for the histogram
#'  binMax number, the maximum bin width for the histogram
#'  slideStep number, the increment the slider should change with each movement
#'  @keywords ggvis, histogram
#'  @export
#'  @examples
#'  initialHistogram <- ggvis(mtcars, x=~mpg, fill := "gray")
#'  interactive_histogram(initialHistogram, 2, 10, 1)


interactive_histogram <- function(myBasicHistogram, binMin, binMax, slideStep){
  library(ggvis)
  myBasicHistogram %>%
    layer_histograms(width =  input_slider(binMin, binMax, step=slideStep, label = "width")) %>%
    add_tooltip(function(df) (df$stack_upr_ - df$stack_lwr_))
}



