# scRNAseq
Analysis pipeline for single-cell RNAseq using both 10X genomics and Parse technologies

## Parse 
Parse provides a complete pipeline that generates both input for downstream analysis (seurat or scanpy). My experimental design included 16 sublibraries containing 30 samples each. 
1) Create a reference file using --mode mkref (see mkref.slurm)
2) Run each sublibrary separately using --mode all and automated using SLURM (see parallel.slurm)
3) Run all the output with --mode combine (see combine.slurm)

## 10X 
10X genomics also provides a complete pipeline that will generate input data for downstream analysis
1) Create a reference file (see mkref.slurm)
2) I reanalyzed publicly available data (see count.slurm)

## Seurat_modules

