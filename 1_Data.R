#0. Environment Set up
#Remove Objects
rm(list=ls())

#Clear Memory
gc(reset=TRUE)

#Set Working directory
setwd("/Users/user/Downloads")

#Packages
library(stringr)
library(dplyr)
library(oro.nifti)
library(fslr)

require(devtools)
devtools::install_github("muschellij2/papayar", force = TRUE)
library(papayar)
formalArgs(papaya)


require(devtools)
devtools::install_github("muschellij2/itsnapr")

library(itksnapr)
itksnap(grayscale = x, overlay = y)

#Failed
require(papayar)
library(papayar)
formalArgs(papaya)
install.packages("papayar")

#Load
img <- readNIfTI("Template-T1-U8-RALPFH-BR.nii.gz", reorient = FALSE)
class(img)
dim(img)

setwd("/Users/user/Downloads/drive-download-20171007T142932Z-001")
img <- readNIfTI("s01_anat.nii", reorient = FALSE)
class(img)
dim(img)

#P1
image(img, z = 100, plot.type = "single")


#P2
orthographic(img)


#P3-Failed
library(scales)
ortho2(img, mask, col.y = alpha("red", 0.3))


#P4-Failed
brain <- img
brain[!in_mask] <- NA
double_ortho(img, brain)

#Example
library(oro.nifti)
x = nifti(img = array(rnorm(100^3), dim= rep(100, 3)), dim=rep(100, 3), datatype=16)
y = nifti(img = array(rbinom(100^3, prob = 0.5, size = 10), dim= rep(100, 3)), dim=rep(100, 3), datatype=16)
index.file = papaya(list(x, y))

#P5
library(oro.nifti)
x = nifti(img = array(rnorm(100^3), dim= rep(100, 3)), dim=rep(100, 3), datatype=16)
y = nifti(img = array(rbinom(100^3, prob = 0.5, size = 10), dim= rep(100, 3)), dim=rep(100, 3), datatype=16)
index.file = papaya(list(x, y))

#P6
devtools::install_github("muschellij2/oro.nifti")
devtools::install_github("muschellij2/fslr")
devtools::install_github("stnava/cmaker")
devtools::install_github("stnava/ITKR")
devtools::install_github("stnava/ANTsR")
devtools::install_github("muschellij2/extrantsr")
install.packages("scales")

rm(list=ls())
library(fslr)
library(extrantsr)
library(scales)

