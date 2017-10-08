#0. Environment Set up
#Remove Objects
rm(list=ls())

#Clear Memory
gc(reset=TRUE)

#Set Working directory
setwd("/Users/user/Desktop/braincsvs")


#Read data
dat <- read.csv("ts.csv", header = TRUE) 
dat1 <- dat

#Split to patient 1
patient1 <- dat[1:200, ]
View(patient1)

write.csv(patient1, "patient1.csv", row.names = FALSE)

#Split to patient 2
patient2 <- dat[201:400, ]
write.csv(patient2, "patient2.csv", row.names = FALSE)


#Split to patient 2
patient2 <- dat[201:400, ]
write.csv(patient2, "patient2.csv", row.names = FALSE)


#For loop to devide
for (i in 1 : 10) {
  
}

#Graph
library(ggplot2)
library(dplyr)

ggplot(patient1, aes(x = time, y = node1)) + geom_point()

patient2 <- patient2[, 2]
patient1 <- patient1[, 1:2]
new <- cbind(patient1, patient2)
View(new)


#New datasets
pat <- read.csv("by_patient.csv", header = TRUE)
