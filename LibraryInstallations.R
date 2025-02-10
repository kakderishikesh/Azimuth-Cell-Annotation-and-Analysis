# Installing the seurat and azimuth package was resulting into error
# Credit for the code for installing azimuth package to pariapooyan on biostars.org
# at https://www.biostars.org/p/9590021/

install.packages("BiocManager")

library(BiocManager)

# DirichletMultinomial #
if (!require("BiocManager", quietly = TRUE))
  
  install.packages("BiocManager")

BiocManager::install("DirichletMultinomial", force = TRUE)

library(DirichletMultinomial)

# TFBSTools #
if (!require("BiocManager", quietly = TRUE))
  
  install.packages("BiocManager")

BiocManager::install("TFBSTools")

library(TFBSTools)

# BSgenome.Hsapiens.UCSC.hg38 #
if (!require("BiocManager", quietly = TRUE))
  
  install.packages("BiocManager")

options(timeout=10000)

BiocManager::install("BSgenome.Hsapiens.UCSC.hg38", force = TRUE)

library(BSgenome.Hsapiens.UCSC.hg38) # Error in library(BSgenome.Hsapiens.UCSC.hg38) : there is no package called ‘BSgenome.Hsapiens.UCSC.hg38’  a


BiocManager::valid()

BiocManager::install(version = "3.20")

options(timeout = 3000) # I also used ethernet connection

BiocManager::install("BSgenome.Hsapiens.UCSC.hg38")

library(BSgenome.Hsapiens.UCSC.hg38)

.rs.restartR()

library(BiocManager)

library(DirichletMultinomial)

library(TFBSTools)

library(BSgenome.Hsapiens.UCSC.hg38)

library(usethis)

library(devtools)

devtools::install_github("satijalab/azimuth", "seurat5", force=TRUE)
devtools::install_github("satijalab/seurat", "seurat5")
devtools::install_github("satijalab/seurat-data", "seurat5")
devtools::install_github("mojaveazure/seurat-disk", force=TRUE)
