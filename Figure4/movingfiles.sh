# This script will move and rename the outputfiles from OSR
$ module load gcc
cd Summary_results_v1_loamy-sand

for a in 6 8 10 12 14 16 
do
	for b in 170 220 270 320 370 420
	do
		for c in 5 10 15 20 25 30
		do
			for e in rep1 #rep2 rep3 rep4 #rep5 
			do
				echo "$a"_"$b"_"$c"_"$e".tab
				cp ../"$a"_"$b"_"$c"/"$e"/tabled_output.tab ./"$a"_"$b"_"$c".tab
			done
		done
	done
done