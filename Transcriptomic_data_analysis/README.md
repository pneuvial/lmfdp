# Transcriptomic data analysis

Data and code to reproduce the figures for the gene expression data analysis:

## Data

The  [Data](Data) directory contains data from Bahr, *et al.* (2013):

- [GSE42057_Y.csv](Data/GSE42057_Y.csv): (12 Mb) gene expression data ($p=12531$ genes x $n=135$ patients)
- [GSE42057_X.csv](Data/GSE42057_X.csv): covariate data ($n=135$ patients x $11$ covariates)
- [GSE42057_import.R](Data/GSE42057_import.R): R script to import the above data from the [GEO](https://www.ncbi.nlm.nih.gov/geo/) repository (Barrett T *et al.*, 2013).
- [GSE42057_lm.R](Data/GSE42057_lm.R): R script to reproduce the analysis of Bahr, *et al.* (2013).

## Code

- [genetic_analysis.py](Genetics_Data_analysis/genetic_analysis.py): python script to run the bootstrap method
- [genetics_confidence_plot.py](Genetics_confidence_curves/genetics_confidence_plot.py): python script to reproduce Figure 4
- [genetics_volcano_plot.R](Volcano_plot/genetics_volcano_plot.R): R script to reproduce Figure 5

## References

- Bahr, *et al.* "Peripheral blood mononuclear cell gene expression in chronic obstructive pulmonary disease." American journal of respiratory cell and molecular biology 49.2 (2013): 316-323. "Peripheral blood mononuclear cell gene expression in chronic obstructive pulmonary disease." American journal of respiratory cell and molecular biology 49.2 (2013): 316-323.

-  Barrett T *et al.* NCBI GEO: archive for functional genomics data sets--update.
Nucleic Acids Res. 2013 Jan;41(Database issue):D991-5.