#!/bin/bash

#SBATCH -J parse_parallel
#SBATCH -n 4
#SBATCH -t 72:00:00
#SBATCH -o out
#SBATCH -e err
#SBATCH --cpus-per-task=10
#SBATCH --mem=80gb
#SBATCH --array=1-<MAX-INDEX>

# Read the line corresponding to the task array index from the fastq pairs file
FASTQ_PAIRS_FILE="./fastq_pairs.txt"
LINE=$(sed -n "${SLURM_ARRAY_TASK_ID}p" $FASTQ_PAIRS_FILE)
read -r FQ1 FQ2 <<< $LINE

# Run the command with the appropriate fastq files and output directory
split-pipe --mode all --chemistry v3 --genome_dir <REF-DIR> --fq1 ./$FQ1 --fq2 ./$FQ2 --output_dir ./parse_output_sublib${SLURM_ARRAY_TASK_ID} --samp_list ./samples.txt
