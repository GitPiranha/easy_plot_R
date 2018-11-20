#' A boxplot Function
#'
#' boxplot function
#' y needs to be continuous
#' x needs to be discrete
#' @param dataframe inputdata
#' @keywords easy_boxplot
#' @export
#' @examples easy_boxplot(ds, ds$x, ds$y)
#' easy_boxplot()

easy_boxplot <-  function(dataframe,
                              xvar,
                              yvar,
                              colorOfPoints)
{
  p <- ggplot(dataframe, aes(x=factor(xvar), y=yvar)) + geom_boxplot() +
    stat_summary(fun.y="mean",
                 geom="point",
                 shape=23,
                 size=3,
                 fill="white") +
    geom_point(position = position_jitter(width=.5, height=0),
               aes(colour = colorOfPoints)) +
    theme_bw()

  p
}
