#!/usr/bin/bash -l
#SBATCH -p stajichlab -c 64 --mem 64gb --out modeltest.log

module load modeltest-ng

modeltest-ng -d aa -i FungalCW_tree_20231129.top_50.fa -o FungalCW_tree_20231129.top_50.modeltest -p 24 -t ml -q FungalCW_tree_20231129.top_50.partition
