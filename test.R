library(ggplot2)
source("easy_boxplot.R")
source("easy_scatterplot.R")

ds <- mtcars

easy_boxplot(ds, ds$gear, ds$mpg, colorOfPoints = ds$cyl)
ds
