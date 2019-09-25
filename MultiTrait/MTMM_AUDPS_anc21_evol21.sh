#!/usr/bin/env bash

# SLURM
#SBATCH--mem=40GB
#SBATCH --output=Logs/MTMM_AUDPS_anc21_evol21.log

# ENVIRONMENT #
ml anaconda3/2019.03
source /software/2019/software/anaconda3/2018.12/etc/profile.d/conda.sh 
conda activate ~/.conda/envs/limix

# DATA #
PHENO=/groups/nordborg/user/pieter.clauw/Documents/Collaborations/Virus/Data/AUDPS_anc21_evol21.csv
GENO=/scratch-cbe/users/pieter.clauw/genotypes_for_pygwas/1.0.0/1001genomes/
OUT=/scratch-cbe/users/pieter.clauw/virus/Results/MultiTrait/

MTMM=~/GitRepos/GWAStoolbox/Limix/multitrait.py

python $MTMM -p $PHENO -g $GENO -m 0.05 -o $OUT

