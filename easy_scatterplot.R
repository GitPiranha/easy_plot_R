#' A scatterplot Function
#'
#' scatterplot function
#' @param dataframe inputdata
#' @keywords easy_scatterplot
#' @export
#' @examples easy_scatterplot(ds, ds$x, ds$y)
#' easy_scatterplot()

easy_scatterplot <-  function(dataframe,
                                   xvar,
                                   yvar)
{
  p <- ggplot(dataframe,
              aes_string(x = xvar,
                         y = yvar))
  p + geom_point()
}
