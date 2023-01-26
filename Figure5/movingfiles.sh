# This script will move and rename the outputfiles from OSR
$ module load gcc
cd Summary_results_v1

for a in CCFN_reduced CCFN_increased CCS_large CCS_small
do
	for b in LRBD1 LRBD2 LRBD3
	do
		for c in LN8 LN11
		do
			for d in loamy-sand silt-loam
			do
				for e in rep1 #rep2 rep3 rep4 rep5 rep6 rep7 rep8
				do
					echo "$a"_"$b"_"$c"_"$d"_"$e".tab
					cp ../"$a"_"$b"_"$c"_"$d"/"$e"/tabled_output.tab ./"$a"_"$b"_"$c"_"$d".tab
				done
			done
		done
	done
done
