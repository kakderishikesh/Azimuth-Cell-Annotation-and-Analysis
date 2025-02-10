# ReadMe: Azimuth Cell Annotation and Analysis

## Project Overview
This project focuses on annotating 10X snRNA-seq data of the human kidney using Azimuth, an R-based cell annotation tool, and visualizing the distribution of cell types in Python.

## Steps Taken to Solve the Problem

### 1. Setting Up the Environment
- Installed necessary R libraries, including Seurat and Azimuth, using the **LibraryInstallation.R** script.
- Installed necessary Python dependencies such as `anndata`, `requests`, `matplotlib`, `seaborn`, and `pandas` for handling and visualizing data.

### 2. Running Azimuth Annotation
- Loaded the **expr.h5ad** dataset in R.
- Used `RunAzimuth()` with the `kidneyref` reference dataset from SeuratData for annotation.
- Exported the annotated metadata as a CSV file (`annotated_expr.csv`).

### 3. Analyzing and Visualizing the Data in Python
- Loaded the CSV metadata file in Python using Pandas.
- Displayed the cell type distribution using `value_counts()`.
- Visualized the distribution using **Matplotlib** and **Seaborn** bar plots.

### 4. Extracting Insights
- Identified that **Principal cells** were the most abundant (5199 occurrences).
- Observed a steep decline in frequency for other cell types.
- Found that **Immune, Vascular Smooth Muscle/Pericyte, and Thick Ascending Limb cells** were extremely rare.

## Issues Encountered
1. **Azimuth Installation Problems**
   - The command `devtools::install_github("satijalab/seurat-data", "seurat5")` did not work despite installing `devtools`.
   - Attempted to use Docker with a Python image but faced additional issues.
   - Resolved the issue by following installation steps shared by user **pariapooyan** on [Biostars](https://www.biostars.org/p/9590021/).

2. **Reference Data Issues**
   - Initially downloaded human kidney reference data from **Zenodo**, but later switched to using **SeuratData’s kidney dataset**, which was more compatible.

3. **Exporting h5ad Format**
   - Directly exporting an **h5ad** file from R was complex.
   - Instead, exported annotation metadata as **CSV**, making it easier to analyze using **Pandas, Matplotlib, and Seaborn** in Python.

## References
- **Dataset Information:**
  - **Group:** University of California San Diego TMC
  - **Consortium:** HuBMAP
  - **Citation:** [doi:10.35079/HBM572.JLDL.664](https://doi.org/10.35079/HBM572.JLDL.664)
  - **Publication Date:** 2023-04-09
  - **Link:** [View Dataset](https://doi.org/10.35079/HBM572.JLDL.664)

- **Guides and Tutorials Followed:**
  - [Biostars Solution](https://www.biostars.org/p/9590021/) by pariapooyan
  - **YouTube Videos for Domain Knowledge:**
    - [Understanding Single Cell RNA-seq](https://www.youtube.com/watch?v=7RuPGaWcY0Y)
    - [Seurat & Single Cell Analysis](https://youtu.be/5RLllEktGWA?si=H0avhAfFRGwEizal)
    - [Azimuth for Single Cell Annotation](https://youtu.be/-MATf22tcak?si=xGut58ZKFOJI5oRd)
    - [Cell Type Annotation Workflow](https://youtu.be/como93CmnS8?si=ZA8I7QHag6ziFyX4)


