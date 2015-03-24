#' Create a basic barchart from data frame with ggplot2
#'
#' This is a very thin wrapper around ggplot2 for creating bar charts,
#' mainly because I find it difficult to remember my preferences.
#'
#' Graph format from the R Graphics Cookbook by Winston Chang.
#' Idea for using ggplot2 within another function from StackOverflow
#' http://stackoverflow.com/a/27462105/718150
#'
#' @param
#' mydf A data frame
#' xcolnum integer Data frame column number you want on the x axis
#' ycolnum integer Data frame column you want on the y axis
#' mytitle character string optional headline for graph
#' barlabels Boolean if you want white labels on the bars showing values
#' outline Boolean if you want a black outline around the bars
#'
#' @keywords ggplot2, bar chart
#' @export
#' @examples

#' # Initial graph from R Cookbook
#' # http://www.cookbook-r.com/Graphs/Bar_and_line_graphs_(ggplot2)/
#' testdata <- data.frame(State = c("Arizona", "Colorado", "Florida", "Georgia",
#'          "Idaho", "Nevada", "North Carolina", "South Carolina", "Texas", "Utah"), Change = c(24.6, 16.9, 17.6, 18.3, 21.1, 35.1, 18.5, 15.3, 20.6, 23.8))
#' basic_barchart(testdata, 1, 2, "Test graph", barlabels=TRUE)


basic_barchart <- function(mydf, xcolnum, ycolnum,  mytitle="", barlabels=FALSE, outline=FALSE){
  # graph format from the R Graphics Cookbook by Winston Chang
  # idea for using ggplot2 within another function from StackOverflow
  # http://stackoverflow.com/a/15323436/718150
  x <- names(mydf)[xcolnum]
  y <- names(mydf)[ycolnum]
  if(outline){
    thecolour <- "black"
  } else {
    thecolour <- "#0072B2"
  }
  pbasic <- ggplot(mydf,aes_string(x=x,y=y)) +
    geom_bar(stat="identity", fill="#0072B2", colour=thecolour) +
    ggtitle(mytitle) +
    theme_minimal()
  if(barlabels == TRUE){
    pbasic <- pbasic +  geom_text(aes_string(label=y), vjust=1.5, colour="white",
                                  position=position_dodge(.9), size=3)
  }


  return(pbasic)
}

