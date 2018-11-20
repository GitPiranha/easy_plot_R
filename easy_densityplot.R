#' A decity plot function
#'
#' Density function
#' @param dataframe columnvector
#' @keywords densityplot
#' @export
#' @examples easy_densityplot(ds, ds$x)
#' easy_densityplot()
#' 
#' fill = NA for no fill colour
#' 
#' 
#' 

easy_densityplot <-  function(dataframe = NULL,
                              xvar,
                              fill = "blue",
                              alpha = 0.2,
                              histogram = "no"
                             )
{
  p <- ggplot(dataframe,
              aes(x = xvar,
                  y = ..density..))
  
  # Activate histogram plot.
  
  if (histogram == "yes")
  {
    p <- p + geom_histogram(fill = "steelblue",
                            colour = "steelblue",
                            size = 2)
    
  }
  
  
  p <- p + geom_density(fill = fill,
                        alpha = alpha)
  p <- p + geom_line(stat = "density") 
  p <- p + theme_minimal()
  
  p
}
