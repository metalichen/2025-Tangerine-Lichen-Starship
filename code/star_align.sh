#!/usr/bin/bash
# this script alignes RNA-seq reads to an indexed genome
#set -e


source package /tgac/software/testing/bin/STAR-2.5.4b
source package /tgac/software/testing/bin/gcc-4.9.1 


read1=$1
read2=$2
index=$3
threads=$4
outfilename=$5

outdirname=$(echo $outfilename | rev | cut -f 2- -d '.' | rev)
indexdir=`dirname $3`



STAR --genomeDir $indexdir \
--runThreadN $threads \
--readFilesIn $read1 $read2 \
--readFilesCommand zcat \
--outFileNamePrefix $outdirname \
--outSAMunmapped Within --outSAMtype BAM SortedByCoordinate \
--outSAMattributes Standard 


