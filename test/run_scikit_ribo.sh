#!/bin/sh
set -e

# --------------------
# Example shell script
# Run scikit-ribo
# --------------------

gtf=<gtf-file-location>
fasta=<ref-genome-fasta-location>
bam=<bam-file-location> # from STAR
rnafold=<path to the Rnafold file> # the file generated by call_rnafold.py
prefix=<prefix-to-use> # defined by user
index_folder=<index-output-folder>
RNA=<RNAseq-TPM-file-location> # gene level TPM generated with salmon or kallisto
output=<output-folder>
unmap=<unmap-regions>

scikit-ribo-build.py \
-g $gtf \
-f $fasta \
-p $prefix \
-r $rnafold \
-t $RNA \
-o $index_folder

scikit-ribo-run.py
-i $bam \
-f $index_folder \
-p $prefix \
-o $output \
-u $unmap
