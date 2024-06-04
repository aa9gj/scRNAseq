# scRNAseq
Analysis pipeline for single-cell RNAseq using both 10X genomics and Parse technologies

## Parse 
Parse provides a complete pipeline that generates both input for downstream analysis (seurat or scanpy). My experimental design included 16 sublibraries containing 30 samples each. 
1) Create a reference file
2) Run each sublibrary separately using --mode all and automated using SLURM (see run_parse_parallel.slurm)
3) Run all the output with --mode combine
## 10X 
