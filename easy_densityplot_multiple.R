#' A decity plot function
#'
#' Density function
#' @param dataframe columnvector factor
#' @keywords densityplot
#' @export
#' @examples easy_densityplot(ds, ds$x, ds$factor)
#' easy_densityplot_multiple()
#' 
#' fill = NA for no fill colour
#' 
#' 

easy_densityplot_multiple <-  function(dataframe = NULL,
                              xvar,
                              groupvar,
                              fill = groupvar,
                              alpha = 0.2)
{
  groupvar <- factor(groupvar)
  
  p <- ggplot(dataframe,
              aes(x = xvar,
                  colour = groupvar,
                  fill = groupvar))
  p <- p + geom_density(alpha = alpha)
  p <- p + theme_minimal()
  
  p
}