---
title: 'Tools to deal with aDNA damage'
date: 2016-08-14
permalink: /posts/2016/08/damage/
tags:
  - aDNA
---

* mapDamage --rescale option changes quality scores on bam files
* [PMDtools](https://code.google.com/archive/p/pmdtools/) - filters out contaminant reads based on deamination profiles AND adjust scores too. Works on SAM files.
* ATLAS toolset can do [BQSR](https://bitbucket.org/phaentu/atlas/wiki/Sequence%20Data%20Processing%20Tools:%20BQSR)
* [AntCaller](https://github.com/BoyanZhou/AntCaller) - genotype caller for ancient genomes. Works better than GATK according to the paper. 
