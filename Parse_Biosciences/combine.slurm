#!/bin/bash

#SBATCH -J parse_combine
#SBATCH -n 4
#SBATCH -t 72:00:00
#SBATCH -o out
#SBATCH -e err
#SBATCH --cpus-per-task=10
#SBATCH --mem=120gb


split-pipe --mode comb --sublibraries <LIST-ALL-SUBLIBRARY_DIRS> --output_dir <OUTPUT-DIR>
