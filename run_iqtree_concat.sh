#!/usr/bin/bash -l
#SBATCH -c 12 --mem 24gb 
module load iqtree

iqtree2 -q FungalCW_tree_20231128.top_50.partition_iqtree -s FungalCW_tree_20231128.top_50.fa -nt AUTO -B 1000
