# *scikit-ribo* 

A scikit framework for joint analysis of Riboseq and RNAseq data
--------

## Contact

Han Fang
hanfang.cshl@gmail.com

## Requirement: 
Environment: Python3, Linux
Dependencies:
conda>=4.2.13, colorama>=0.3.7, glmnet-python>=0.1, gffutils>=0.8.7.1, matplotlib>=1.5.1, numpy>=1.11.2, pandas>=0.19.2, pybedtools>=0.7.8, pyfiglet>=0.7.5, pysam>=0.9.1.4, scikit-learn>=0.18, scipy>=0.18.1, seaborn>=0.7.0, termcolor>=1.1.0\

## Install

First, install glmnet_python

    git clone https://github.com/hanfang/glmnet_python.git
    cd glmnet_python
    python setup.py install

Second, install `scikit-ribo`
    
    pip install scikit-ribo

## Usage
    Twp steps:

    	Build index: `scikit-ribo-build.py`

    	Fit model:   `scikit-ribo.py`

    scikit-ribo-build.py -g gtf-file -f fasta-file -p prefix -r rna-fold-folder -t TPM-file -o index-path

    required arguments:
    	     -g G        Gtf file, required
    	     -f F        Fasta file, required
    	     -p P        Prefix to use, required
    	     -r R        Rnafold folder, required
    	     -t T        TPM of RNAseq sample, required
    	     -o O        Output path of the built indexes, required
    
    
    scikit-ribo.py -i bam-file -f index-path -p prefix -o output-path

    required arguments:
        -i I        Input bam file
    	-f F        path to the Folder of BED/index files generated by the pre-processing module
    	-p P        Prefix for BED/index files
    	-o O        Output path, recommend using the sample id

    optional arguments:    
    	     -h, --help  show this help message and exit
    	     -q Q        minimum mapQ allowed, Default: 20
    	     -s S        Shortest read length allowed, Default: 10
    	     -l L        Longest read length allowed, Default: 35
    	     -c          enable cross validation for glmnet
    	     -r          setting this flag will enable the RelE mode
    	     -u U        Un-mappable regions

## Introduction

## Reference

Preprint coming up