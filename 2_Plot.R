library(dplyr)
library(ggplot2)

setwd("/Users/user/Desktop/braincsvs")
dir()



dat <- read.csv("ts1.csv", header = TRUE)

col <- head(dat)
col1 <- col[, 3]


ggplot(dat, aes(node1, node2, color = time)) + geom_point()

ggplot(dat, aes(time, node1, group = 1)) + geom_point() + geom_line()



#3D -- failed in rgl
install.packages("plotly")
library(plotly)
dat <- read.csv("ts5.csv", header = TRUE)
dim(dat)
plot3d(dat$node1, dat$node2, dat$node3)
mtcars
