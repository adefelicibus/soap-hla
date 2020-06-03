[![Anaconda-Server Badge](https://anaconda.org/adefelicibus/soap-hla/badges/version.svg)](https://anaconda.org/adefelicibus/soap-hla)
[![Anaconda-Server Badge](https://anaconda.org/adefelicibus/soap-hla/badges/platforms.svg)](https://anaconda.org/adefelicibus/soap-hla)
[![Anaconda-Server Badge](https://anaconda.org/adefelicibus/soap-hla/badges/installer/conda.svg)](https://conda.anaconda.org/adefelicibus)

# soap-hla

SOAP-HLA is a flow of sequencing data analysis pipeline to type all of the HLA genes in IMGT/HLA database using capture sequenced data or WGS data with high accuracy.

Disclaimer: this is just a conda-package repository. You can read about the software in his paper:

[An Integrated Tool to Study MHC Region: Accurate SNV Detection and HLA Genes Typing in Human MHC Region Using Targeted High-Throughput Sequencing](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3722289/)

## Install

This package must be installed using conda:

```sh
conda install -c adefelicibus soap-hla
```

## Using

Starting with a ready-to-use BAM file, you can run the software with this command:

```sh
source activate soap-hla
MHC_autopipeline -i sample.bam -od path/output/ -v hg19
```

Version 1.0.0
