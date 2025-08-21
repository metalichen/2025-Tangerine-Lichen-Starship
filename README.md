# Tangerine: a Starship-like element in the genomes of lichen fungi Xanthoria
* Description of analysis associated with Tagirdzhanova et al. 2025

## Abstract

## Structure of the repository
* `analysis_and_temp_files`: all files generated during labwork and bioinformatic analysis and retained either for reusing, or for documentation purposes. Broken into subfolders by steps
* `code`: all scripts associated with the project. Not including RMarkdown files (they are in `notebook`) and Snakemake files (they are in subfolders in `analysis_and_temp_files`)
* `notebook`: documentation of all labwork and data analysis. Folder contains RMarkdown files used to generate reports, and reports themselves in html. Names match the subfolders of `analysis_and_temp_files`:
	* `01_calcicola_genome` description of how the newly sequenced X. calcicola genome was obtained
	* `02_annotate` annotation of the four Xanthoria genomes
	* `03_starfish` Starfish pipeline
	* `04_search_genomes` screening other genomes for the presence of Tangerine 
	* `05_HGT` horizontal gene transfer analysis
	* `06_genome_viz` visualizing genome synteny
	* `07_reassemble` exploring structural variants
	* `08_transcriptomics` visualizing expresion of Tangerine genes from our earlier transcriptomic study 
	* `09_captain` explore Tangerine captains in the context of other YRs
* `results`: figures and tables generated for the publication, including supplementary

## Key outputs
