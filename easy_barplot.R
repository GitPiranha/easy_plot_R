#' A barplot Function
#'
#' Barplot function
#' @param dataframe inputdata
#' @keywords barplot
#' @export
#' @examples easy_barplot(ds, ds$x, ds$y)
#' easy_barplot()

easy_barplot <-  function(dataframe,
                          xvar,
                          yvar,
                          fill = "steelblue",
                          colour = "black")
{
  p <- ggplot(dataframe,
              aes_string(x = xvar,
                         y = yvar))
  p <- p + geom_bar(stat="identity",
                    colour = colour,
                    fill = fill)
  p + theme_minimal()


}
