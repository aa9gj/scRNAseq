#!/bin/bash

i=$SLURM_ARRAY_TASK_ID
line=$(sed -n "${i}{p;}" < ./sc_samples.txt)
sine=$(sed -n "${i}{p;}" < ./sam_name)

cellranger count --id=${sine} --chemistry auto --transcriptome=<CELLRANGER-REF> --fastqs=${line}
