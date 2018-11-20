
# Load libraries

library(ggplot2)


# Load files with functions

source("easy_boxplot.R")
source("easy_scatterplot.R")
source("easy_barplot.R")


# Testing

ds <- mtcars

easy_boxplot(ds, ds$gear, ds$mpg, colorOfPoints = ds$cyl)
ds

easy_scatterplot(ds, ds$mpg, ds$disp) + ylab("test")


easy_barplot(dataframe = ds, xvar = ds$mpg, yvar = ds$cyl)
