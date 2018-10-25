---
title: 'SNP calling from low-coverage ancient samples'
date: 2016-08-14
permalink: /posts/2016/08/ancient-SNPs/
tags:
  - vcf
  - aDNA
---


## There are several potential problems if you call SNPs from low coverage ancient samples:
### Reference bias
As has been stated [here](https://github.com/stschiff/sequenceTools/blob/120c0e3fa722016a3851beb95d3ef24bc9179df1/README.md) and elsewhere, samtools mpileup does quality recalibration by default. This recalibration does not work very well with aDNA data. To disable this, call snips using -B flag.   

### Not enough coverage (duh!)
If you ever need to recover snips from low-coverage genomes, you can use [SequenceTools](https://github.com/stschiff/sequenceTools/tree/120c0e3fa722016a3851beb95d3ef24bc9179df1) soft written by Stephan Schiffels. 
