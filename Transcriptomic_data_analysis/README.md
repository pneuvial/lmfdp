# Transcriptomic data analysis

Data and code to reproduce the figures for the gene expression data analysis:

## Data

The  [](Data) directory contains data from Bahr, *et al.* (2013):

- [](Data/GSE42057_Y.csv): gene expression data ($p=12531$ genes x $n=135$ patients)
- [](Data/GSE42057_X.csv): covariate data ($n=135$ patients x $11$ covariates)
- [](Data/GSE42057_import.R): R script to import the above data from the [GEO](https://www.ncbi.nlm.nih.gov/geo/) repository (Barrett T *et al.*, 2013).
- [](Data/GSE42057_lm.R): R script to reproduce the analysis of Bahr, *et al.* (2013).

## Code

- [](Genetics_Data_analysis/genetic_analysis.py): python script to run the bootstrap method
- [](Genetics_confidence_curves): python script to reproduce Figure 4
- [](Volcano_plot/genetics_volcano_plot.R): R script to reproduce Figure 5


## References

- Bahr, *et al.* "Peripheral blood mononuclear cell gene expression in chronic obstructive pulmonary disease." American journal of respiratory cell and molecular biology 49.2 (2013): 316-323. "Peripheral blood mononuclear cell gene expression in chronic obstructive pulmonary disease." American journal of respiratory cell and molecular biology 49.2 (2013): 316-323.

-  Barrett T *et al.* NCBI GEO: archive for functional genomics data sets--update.
Nucleic Acids Res. 2013 Jan;41(Database issue):D991-5.