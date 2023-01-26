# This script will move and rename the outputfiles from OSR
$ module load gcc
cd Summary_results_v2

for a in 6 7 8 9 10 11 12 13 14 15 16 17 
do
	for b in 170 195 220 245 270 295 320 345 370 395 420 445
	do
		for c in HN LN5 LN8 LN13 #LN8 #LN1 LN2 LN3 LN4 LN5 LN6 LN7 LN8 LN9 LN10 LN11 LN12 LN13 LN14
		do
			for e in rep1 #rep2 rep3 rep4 #rep5 
			do
				echo "$a"_"$b"_"$c"_"$e".tab
				cp ../"$a"_"$b"_"$c"/"$e"/tabled_output.tab ./"$a"_"$b"_"$c"_"$e".tab
			done
		done
	done
done