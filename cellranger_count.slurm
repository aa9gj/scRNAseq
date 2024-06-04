#!/bin/bash

i=$SLURM_ARRAY_TASK_ID
line=$(sed -n "${i}{p;}" < ./sc_samples.txt)
sine=$(sed -n "${i}{p;}" < ./sam_name)

/home/arbya/shared-folder/arby/bin/cellranger-7.1.0/bin/cellranger count --id=${sine} --chemistry auto --transcriptome=/home/shared-folder/arby/wrk/scRNAseq_analysis_jun723/genome_references/dog/dog_cellranger_ucsc_ref --fastqs=/home/arbya/shared-folder/arby/wrk/scRNAseq_analysis_jun723/public_data/eschke_etal/raw_data_10X_bam_files/${line}
