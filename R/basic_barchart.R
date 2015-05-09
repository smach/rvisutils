#' Create a basic barchart from data frame with ggplot2
#'
#' This is a very thin wrapper around ggplot2 for creating bar charts,
#' mainly because I find it difficult to remember my preferences.
#'
#' Graph format from the R Graphics Cookbook by Winston Chang.
#' Idea for using ggplot2 within another function from StackOverflow
#' http://stackoverflow.com/a/27462105/718150
#'
#' @param mydf A data frame
#' @param xcolnum integer Data frame column number you want on the x axis
#' @param mycolnum integer Data frame column you want on the y axis
#' @param mytitle character string Optional headline for graph
#' @param barlabels Boolean Optional if you want white labels on the bars showing values
#' @param outline Boolean Optional if you want a black outline around the bars
#' @param orderby integer Optional if you want x axis reordered by value of a column number
#' @param descending Boolean Optional if you are ordering and want order to be descending, set to TRUE
#'
#' @keywords ggplot2, bar chart
#' @import ggplot2
#' @export
#' @examples

#' # Initial graph from R Cookbook
#' # http://www.cookbook-r.com/Graphs/Bar_and_line_graphs_(ggplot2)/
#' testdata <- data.frame(State = c("Arizona", "Colorado", "Florida", "Georgia",
#'          "Idaho", "Nevada", "North Carolina", "South Carolina", "Texas", "Utah"), Change = c(24.6, 16.9, 17.6, 18.3, 21.1, 35.1, 18.5, 15.3, 20.6, 23.8))
#' basic_barchart(testdata, 1, 2, "Test graph", barlabels=TRUE)


basic_barchart <- function(mydf, xcolnum, ycolnum,  mytitle="", barlabels=FALSE, outline=FALSE, orderby=0, descending=FALSE){
  # graph format from the R Graphics Cookbook by Winston Chang
  # idea for using ggplot2 within another function from StackOverflow
  # http://stackoverflow.com/a/15323436/718150

  myx <- names(mydf)[xcolnum]
  myy <- names(mydf)[ycolnum]
  if(outline){
    thecolour <- "black"
  } else {
    thecolour <- "#0072B2"
  }


  if(orderby > 0){
    mydf <- mydf[order(mydf[,ycolnum]),]
    if(descending){
      mydf <- mydf[order(rev(mydf[,ycolnum])),]
    }

    mydf[,xcolnum] <- factor(mydf[,xcolnum], levels = unique(mydf[,xcolnum]), ordered = TRUE)

  }


  pbasic <- ggplot(mydf,aes_string(x=myx,y=myy, ymax = max(mydf[,ycolnum]) * 1.02))


  pbasic <- pbasic +
    geom_bar(stat="identity", fill="#0072B2", colour=thecolour) +
    ggtitle(mytitle) +
    theme_minimal()
  if(barlabels == TRUE){
    pbasic <- pbasic +  geom_text(aes_string(label=myy), vjust=1.5, colour="white",
                                  position=position_dodge(.9), size=3)
  }


  return(pbasic)
}

