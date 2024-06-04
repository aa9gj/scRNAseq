#!/bin/bash

#SBATCH -J cellranger_mkref
#SBATCH -n 1
#SBATCH -t 4:00:00
#SBATCH -o out
#SBATCH -e err
#SBATCH --nodes=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=30gb

/home/arbya/shared-folder/arby/bin/cellranger-7.1.0/bin/cellranger mkref --genome=dog_cellranger_ucsc_ref --fasta=canFam6.fa --genes=ncbiRefSeq.filtered.gtf

