---
title: 'Tools to deal with aDNA damage'
date: 2018-10-26
permalink: /posts/2018/10/damage/
tags:
  - aDNA
---

* mapDamage --rescale option changes quality scores on bam files
* [PMDtools](https://code.google.com/archive/p/pmdtools/) - filters out contaminant reads based on deamination profiles AND adjust scores too. Works on SAM files.
* ATLAS toolset can do [BQSR](https://bitbucket.org/phaentu/atlas/wiki/Sequence%20Data%20Processing%20Tools:%20BQSR)
* [AntCaller](https://github.com/BoyanZhou/AntCaller) - genotype caller for ancient genomes. Works better than GATK according to the paper. 
* [SpAl](https://bioinf.eva.mpg.de/SpAl/) - estimate the proportion of spurious alignments in ancient DNA. Works with any species, as long as there is data on variation in the genome. 
 