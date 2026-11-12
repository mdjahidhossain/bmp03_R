install.packages("tidyverse")
library(BiocManager)
# advanced package managing 
install.packages("pak")
pak::pkg_install("DESeq2")
library(DESeq2)

#multiple packages
pak::pkg_install(c("tidyplots","tidyverse"))
library(tidyplots)

##course build in R
install.packages("swirl")