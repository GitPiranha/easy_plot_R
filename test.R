
# Load libraries

library(ggplot2)


# Load files with functions

source("easy_boxplot.R")
source("easy_scatterplot.R")
source("easy_barplot.R")
source("easy_densityplot.R")
source("easy_densityplot_multiple.R")


# Testing

ds <- mtcars

easy_boxplot(ds, ds$gear, ds$mpg, colorOfPoints = ds$cyl)
ds

easy_scatterplot(ds, ds$mpg, ds$disp) + ylab("test")


easy_barplot(dataframe = ds, xvar = ds$mpg, yvar = ds$cyl)


easy_densityplot(xvar = ds$hp)
easy_densityplot(mtcars, mtcars$hp, fill = "white") + xlab("test")


easy_densityplot(mtcars, mtcars$hp, fill = "blue", histogram = "yes")


easy_densityplot_multiple(mtcars, mtcars$hp, groupvar = mtcars$cyl)

