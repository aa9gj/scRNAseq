#!/bin/bash

#SBATCH -J cellranger_mkref
#SBATCH -n 1
#SBATCH -t 4:00:00
#SBATCH -o out
#SBATCH -e err
#SBATCH --nodes=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=30gb

cellranger mkref --genome=<Name> --fasta=<ref_fasta_file> --genes=<ref_gtf_file>
