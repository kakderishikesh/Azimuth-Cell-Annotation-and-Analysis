# R Notebook for Azimuth Cell Annotations
# Author: Rishikesh Kakde (rkakde@iu.edu)

# To setup and install Azimuth Package run the LibraryInstallation.R script

# Load necessary libraries
library(Seurat)
library(Azimuth)

# Load the reference dataset
#ref_data <- readRDS("Reference_Data/ref.Rds")
#view(ref_data@meta.data)

# Don't need to read the file, we will directly call it in the RunAzimuth() query
# Reference Data for Human kidney is already in the SeuratData package

# Run Azimuth Annotation
adata <- RunAzimuth(query = "expr.h5ad", reference = "kidneyref")

#view(adata@meta.data)

# Export the metadata to csv to study distribution in Python
write.csv(adata@meta.data, file='annotated_expr.csv', quote=F, row.names = F)