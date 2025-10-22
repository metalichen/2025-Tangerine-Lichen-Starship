#!/usr/bin/env Rscript
library(gggenomes)
regionGenes = utils::read.table("analysis_and_temp_files/13_starship_clean/locusViz//manyxanthoria.region0001.genes.config", header = T, sep = '	')
regionSeqs = utils::read.table("analysis_and_temp_files/13_starship_clean/locusViz//manyxanthoria.region0001.seqs.config", header = T, sep = '	')
regionFeats = utils::read.table("analysis_and_temp_files/13_starship_clean/locusViz//manyxanthoria.region0001.feats.config", header = T, sep = '	')
linkFeats = read_links("analysis_and_temp_files/13_starship_clean/locusViz//manyxanthoria.region0001.links.filt.tsv", format = 'blast')
regionGC <- read_bed("analysis_and_temp_files/13_starship_clean/locusViz//manyxanthoria.region0001.gc.config")

widthFrac = max(regionSeqs$length) / 20000
#heightFrac = nrow(regionSeqs) / 2 # for default cases
heightFrac = nrow(regionSeqs) / 1.1 # for when OG ids are included as gene_name

align <- gggenomes(genes = regionGenes, seqs = regionSeqs, feats = regionFeats, links = linkFeats) %>% add_feats(gc=regionGC) +
  geom_link(offset = 0.04) +
  geom_bin_label(size = 3, expand_x = -100000, nudge_left = 0.05) +
  geom_feat(alpha=.6, linewidth=3, position="identity", color = "#ff0000") +
  geom_seq(linewidth = 0.5) +
  geom_gene(aes(fill=name), show.legend = T, shape = 3) + geom_wiggle(aes(z=score, group=seq_id), feats(gc), fill="lavenderblush4", offset=-.3, height=.38, bounds=c(.5,0.15,0.65)) +
  scale_fill_manual("Gene tags", values = c("cap" = "#ff0000", "tyr" = "#ff0000", "d37" = "#92e9ff", "fre" = "#b17227", "plp" = "#fdb735", "nlr" = "#048dfb"), na.value = "cornsilk3") +
  geom_gene_tag(aes(label=name), size = 2, nudge_y=0.1, check_overlap = FALSE)
ggsave("analysis_and_temp_files/13_starship_clean/locusViz//manyxanthoria.region0001.png", plot = align, units = "in", height = heightFrac, width = widthFrac, limitsize = FALSE)
ggsave("analysis_and_temp_files/13_starship_clean/locusViz//manyxanthoria.region0001.svg", plot = align, units = "in", height = heightFrac, width = widthFrac, limitsize = FALSE)
