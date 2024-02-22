#!/usr/bin/bash -l
#SBATCH -p short -c 64 --mem 24gb
module load phykit
CPU=64
DIR=FungalCW_tree_20231129

parallel -j $CPU phykit toverr -a {} -t {}.contree \> {}.phykit_toverr ::: $(ls $DIR/*.mfa)
echo -n -e "GENE\tTREENESS_RATIO\ttreeness\tRCV\n" > $DIR.toverr.tsv
for file in $(ls $DIR/*.phykit_toverr)
do
	name=$(basename $file .aa.mfa.phykit_toverr)
	echo -n -e "$name\t"
	cat $file
done >> $DIR.toverr.tsv
