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
* Summary of RIP effects on the genome: [X. calcicola](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/02_annotate/Xanthoria_calcicola_GTX0491.scaffolds.fa_profile.csv), [X. parietina GTX0501](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/02_annotate/Xanthoria_parietina_GTX0501.scaffolds.fa_profile.csv), [X. parietina SAMEA111342678](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/02_annotate/Xanthoria_parietina_SAMEA111342678.scaffolds.fa_profile.csv), [X. parietina SAMEA115359166](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/02_annotate/Xanthoria_parietina_SAMEA115359166.scaffolds_removeN.fa_profile.csv)
* Summary of repeat content: [X. calcicola](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/02_annotate/earlgrey_data/Xc_GTX0491_summaryFiles/Xc_GTX0491.highLevelCount.txt), [X. parietina GTX0501](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/02_annotate/earlgrey_data/Xp_GTX0501_summaryFiles/Xp_GTX0501.highLevelCount.txt), [X. parietina SAMEA111342678](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/tree/main/analysis_and_temp_files/02_annotate/earlgrey_data/Xp_SAMEA111342678_summaryFiles), [X. parietina SAMEA115359166](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/tree/main/analysis_and_temp_files/02_annotate/earlgrey_data/Xp_SAMEA115359166_summaryFiles)
* [List of tyrosine recombinases identified in the four Xanthoria genomes](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/03_starfish/geneFinder/manyxanthoria.tyr.bed)
* [List of Starship-like elements identified in the four Xanthoria genomes](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/03_starfish/elementFinder/manyxanthoria_round.elements.named.stats)
* [Species tree generated with Orthofinder for 107 ascomycete genomes](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/05_HGT/Orthofinder/Results_May21/Species_Tree/SpeciesTree_rooted_node_labels_renamed.txt)
* Gene trees generated with IQ-TREE for the two HGT candidates within Tangerine: [NLR](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/05_HGT/OG0007437_aligned.phyl.renamed.contree) and [methyltransferase](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/05_HGT/OG0006598_aligned.phyl.renamed.contree)
* [Structural variants within Tangerine and in its vicinity](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/07_reassemble/OZ2100_30_element_flank_sniffles.vcf)
* Sequenice-based phylogeny on Tangerine captains and a selection of tyrosine-recombinases: [tree generated with IQ-TREE](Sequence-based tree generated with IQ-TREE), [trimmed alignment](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/09_captain/YRsuperfamRefs_plus_ours_aligned_filtered.phyl), [original fasta](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/09_captain/YRsuperfamRefs_plus_ours.faa)
* Structure-based phylogeny generated with Foldtree on Tangerine captains and a selection of tyrosine-recombinases: [alntmscore metric](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/09_captain/foldtree/alntmscore_struct_tree.PP.nwk.rooted.final), [foldtree metric](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/09_captain/foldtree/foldtree_struct_tree.PP.nwk.rooted.final), [lddt metric](https://github.com/metalichen/2025-Tangerine-Lichen-Starship/blob/main/analysis_and_temp_files/09_captain/foldtree/lddt_struct_tree.PP.nwk.rooted.final)

* See also the FigShare repository (doi: 10.6084/m9.figshare.30417202) for the output files too big to put on GutHub:
	* AlphaFold models generated for the Tangerine captains and a selection of tyrosine recombinases from across fungi
	* Whole-genome alignments for the four Xanthoria genomes including in the study generated with MUMmer
	* Functional annotations for the four Xanthoria genomes including in the study generated using Funannotate (genes) and EarlGrey (repeats)
	* Orthogroup analysis on 107 ascomycete genomes, including four Xanthoria genomes, made with Orthofinder. The archive includes species and gene trees, as well as the table with orthogroup assignments
	* Input used for running the Starfish pipeline. Includes nucleotide fastas of genome assemblies, annotation files in gff format, and protein fastas for predicted proteome
	* Output generated by the Starfish pipline. Includes outputs of geneFinder, elementFinder, and regionFinder modules
	* Protein sequences of selected tyrosine recombinases and the Tangerine captains, sequence alignments, and phylogeny generated using IQ-TREE