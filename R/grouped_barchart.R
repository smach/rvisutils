#' Create a grouped barchart from data frame
#'
#' Graph format from the R Graphics Cookbook by Winston Chang.
#' Idea for using ggplot2 within another function from StackOverflow
#' http://stackoverflow.com/a/27462105/718150
#'
#' @param
#' mydf A data frame
#' xcolnum integer Data frame column number you want on the x axis
#' ycolnum integer Data frame column you want on the y axis
#' fillcolnum integer Data frame column you want bars colored by
#' mytitle character string optional headline for graph
#'
#' @keywords ggplot2, bar chart
#' @export
#' @examples
#' Initial graph from R Cookbook
#' http://www.cookbook-r.com/Graphs/Bar_and_line_graphs_(ggplot2)/
#' dat1 <- data.frame(
#' sex = factor(c("Female","Female","Male","Male")),
#' time = factor(c("Lunch","Dinner","Lunch","Dinner"), levels=c("Lunch","Dinner")),
#' total_bill = c(13.53, 16.81, 16.24, 17.42)
#' )
#' p <- grouped_barchart(dat1, 2, 3, 1, "Test graph")
#' print(p)



grouped_barchart <- function(mydf, xcolnum, ycolnum, fillcolnum, mytitle=""){
  # graph format from the R Graphics Cookbook by Winston Chang
  # idea for using ggplot2 within another function from StackOverflow
  # http://stackoverflow.com/a/15323436/718150
  x <- names(mydf)[xcolnum]
  y <- names(mydf)[ycolnum]
  fill <- names(mydf)[fillcolnum]
  pgrouped <- ggplot(mydf,aes_string(x=x,y=y, fill=fill)) +
    geom_bar(position="dodge", stat="identity") +
    ggtitle(mytitle) +
    theme_minimal() +
    geom_text(aes_string(label=y), vjust=1.5, colour="white",
              position=position_dodge(.9), size=3)

  return(pgrouped)
}

