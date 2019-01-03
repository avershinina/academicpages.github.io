#!/usr/bin/bash
# 23 Oct 2018

H=/avershinina

cd ${H}/genomes

IN=${H}/genomes

N=$(echo ${1} | sed 's/[.].*//')

samtools rmdup -S ${IN}/${1} ${N}.rescaled.rmdup.bam
samtools index ${N}.rescaled.rmdup.bam

wait

samtools flagstat ${IN}/${1} >& ${N}.rescaled.flagstats.txt
samtools flagstat ${N}.rescaled.rmdup.bam >& ${N}.rescaled.rmdup.flagstats.txt
samtools idxstats ${IN}/${1} >& ${N}.rescaled.idxstats.txt
samtools idxstats ${N}.rescaled.rmdup.bam >& ${N}.rescaled.rmdup.idxstats.txt

echo "Sample $1 processed"

wait 

B=${IN}/*.bam
ANGSD=${H}/tools/angsd/angsd
F='-minQ 25 -minMapQ 25 -uniqueOnly -setMinDepth 5 -setMaxDepth 100 -iupacRatio 0.35 -nThreads 10 -howOften 1000'

for S in ${B}; do
	N=$(echo ${S} | sed 's/[.].*//')
	echo "${N}"
	$ANGSD -doFasta 4 -doCounts 1 $F -i $S -out ${N}_w_Ti
done
echo "With Ti conversion done"


mkdir ${IN}/fastas_w_Ti
OUT_w_Ti=${IN}/fastas_w_Ti

mv *_w_Ti $OUT_w_Ti

echo "All done"