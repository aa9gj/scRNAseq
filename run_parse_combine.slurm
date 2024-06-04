#!/bin/bash

#SBATCH -J parse_combine
#SBATCH -n 4
#SBATCH -t 72:00:00
#SBATCH -o out
#SBATCH -e err
#SBATCH --cpus-per-task=10
#SBATCH --mem=120gb

source /home/arbya/.bashrc
conda activate miniconda
ml ParseBiosciences-Pipeline/


split-pipe --mode comb --sublibraries ./parse_output_sublib1 ./parse_output_sublib2 ./parse_output_sublib3 ./parse_output_sublib4 ./parse_output_sublib5 ./parse_output_sublib6 ./parse_output_sublib7 ./parse_output_sublib8 ./parse_output_sublib9 ./parse_output_sublib10 ./parse_output_sublib11 ./parse_output_sublib12 ./parse_output_sublib13 ./parse_output_sublib14 ./parse_output_sublib15 ./parse_output_sublib16 --output_dir ./combined_results
